#ifndef __CG_VERTEX_SHADER_H__
#define __CG_VERTEX_SHADER_H__
//enacpsulate a vertex shader
#include <stdio.h>
#include <stdarg.h>
#include <cstring>
#include <Cg/cg.h>    /* included in Cg toolkit for nvidia */
#include <Cg/cgGL.h>

extern CGcontext   myCgContext;
extern CGprofile   myCgVertexProfile;

static void checkForCgError(const char *situation)
{
	CGerror error;
	const char *string = cgGetLastErrorString(&error);

	if (error != CG_NO_ERROR) {
		printf("%s: %s\n", situation, string);
		if (error == CG_COMPILER_ERROR) {
			printf("%s\n", cgGetLastListing(myCgContext));
		}
		exit(1);
	}
}
class cgVertexShader
{
public:
	CGprogram 	m_vertexProgram;
	CGparameter m_vertexParam[128];
	char		m_vertexPNames[128][128];
	int			m_numParams;

	cgVertexShader(const char *fname, const char *entry)
	{
		m_vertexProgram = cgCreateProgramFromFile(
		                      myCgContext,              /* Cg runtime context */
		                      CG_SOURCE,                /* Program in human-readable form */
		                      fname,  /* Name of file containing program */
		                      myCgVertexProfile,        /* Profile: OpenGL ARB vertex program */
		                      entry,      /* Entry function name */
		                      NULL);                    /* No extra compiler options */
		checkForCgError("creating vertex program from file");
		cgGLLoadProgram(m_vertexProgram);
		checkForCgError("loading vertex program");
		m_numParams = 0;
	}
	~cgVertexShader()
	{
		cgDestroyProgram(m_vertexProgram);
	}
	void addParams(int n, ...)
	{
		va_list vl;
		va_start(vl,n);
		for (int i=0; i<n; i++) {
			char *val=va_arg(vl,char *);
			m_vertexParam[i] = cgGetNamedParameter(m_vertexProgram, val);
			strncpy(m_vertexPNames[i], val, 128);
		}
		va_end(vl);
		m_numParams = n;
		checkForCgError("loading vertex program variables");
	}
	void setParam(int n, ...)
	{
		//assumes we are just setting floats.
		//first argument is the number of floats + 1.
		va_list vl;
		va_start(vl,n);
		float *v = (float *)malloc((n-1)*sizeof(float));
		int k=0;
		for (int i=0; i<n; i++) {
			if (i==0) {
				char *name = va_arg(vl,char *);
				for (k=0; k<m_numParams; k++) {
					if (strncmp(name, m_vertexPNames[k], 128) == 0)
						break;
				}
			} else {
				if (k < m_numParams) {
					double f = va_arg(vl, double);
					v[i-1] = f;
				}
			}
		}
		if (k < m_numParams) {
			if (n == 2) cgSetParameter1f(m_vertexParam[k],v[0]);
			if (n == 3) cgSetParameter2f(m_vertexParam[k],v[0],v[1]);
			if (n == 4) cgSetParameter3f(m_vertexParam[k],v[0],v[1],v[2]);
			if (n == 5) cgSetParameter4f(m_vertexParam[k],v[0],v[1],v[2],v[3]);
		} else {
			printf("cgVertexShader:unknown param name\n");
		}
		va_end(vl);
		free(v);
	}
	void bind()
	{
		cgGLBindProgram(m_vertexProgram);
		checkForCgError("binding vertex program");
	}
};
#endif