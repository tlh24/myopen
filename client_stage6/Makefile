#!/bin/sh

OCAMLC = ocamlfind ocamlc -c -w x -g 
OCAMOPT = ocamlfind ocamlopt -c -w x -inline 3 -ffast-math
OPTIONS = -package lablGL,labltk,lablGL.togl,unix,extlib
LINKER = ocamlfind ocamlc -g

OBJS =  pts2.cmo glwindow.cmo client.cmo
#order matters above! 
OPTOBJS = $(OBJS:.cmo=.cmx)

.SUFFIXES: .ml .mli .cmo .cmi .cmx .c .o

.mli.cmi:
	$(OCAMLC) $(OPTIONS) $<
	
.ml.cmo:
	$(OCAMLC) $(OPTIONS) $<
	
.ml.cmx:
	$(OCAMOPT) $(OPTIONS) $<
	
client: $(OBJS)
	$(LINKER) -linkpkg $(OPTIONS) $(OBJS) -o client

client.opt:  $(OPTOBJS) 
	ocamlfind ocamlopt -g -inline 3 -ffast-math -linkpkg $(OPTIONS) $(OPTOBJS) -o client.opt

all: client 				#bytecode

opt:	client.opt  	#native code

clean: 
	rm -f $(OBJS) $(OPTOBJS)
	rm -f *.cmi
	rm -f *.o
	rm -f client client.opt
