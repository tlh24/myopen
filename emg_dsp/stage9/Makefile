OBJS=stage9-analog1.pdf stage9-analog2.pdf stage9-analog3.pdf \
	stage9-analog4.pdf stage9.pdf

all: stage9_all.pdf
	
%.pdf:%.ps
	ps2pdf -sPAPERSIZE=a3 -dOptimize=true -dEmbedAllFonts=true $< $@

stage9_all.pdf: $(OBJS)
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=$@ -dBATCH $(OBJS)
	
clean: 
	rm -rf $(OBJS) stage9_all.pdf