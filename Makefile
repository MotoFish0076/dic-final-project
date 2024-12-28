rtl:
	irun ./TESTBED.v  -define RTL -debug  -notimingchecks -loadpli1 debpli:novas_pli_boot

gate:
	irun  ./TESTBED.v -define GATE -debug ./asap7sc7p5t_SIMPLE_RVT_TT_08302018.v  ./asap7sc7p5t_SEQ_RVT_TT_08302018.v  ./asap7sc7p5t_INVBUF_RVT_TT_08302018.v -nontcglitch -loadpli1 debpli:novas_pli_boot

clean:
	rm -rf *.key
	rm -rf *.history
	rm -rf *.log
	rm -rf *.fsdb
