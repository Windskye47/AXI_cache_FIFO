.PHONY:compile sim verdi clean
cov_opt :=line+cond+tgl+fsm

make: compile sim verdi
compile:
		@echo "start to compile"
		vcs -full64 -fsdb -f  run.f -kdb -debug_access+all -lca \
		-debug_pp -P /home/edatools/synopsys/verdi3_vL_2016.06_SP1/share/PLI/VCS/LINUX64/novas.tab \
		/home/edatools/synopsys/verdi3_vL_2016.06_SP1/share/PLI/VCS/LINUX64/pli.a +define+DUMPFSDB \
		-cm $(cov_opt) -l comp.log
		@echo "end of compile"
sim:
		@echo "start to run simulation"
		#./simv +fsdb +autoflush -l sim.log 
		./simv +fsdbfile+top_tb.fsdb -cm $(cov_opt) -l sim.log
		@echo "end of simulation"
verdi:
		@echo "start to launch verdi"
		verdi -f run.f -ssf top_tb.fsdb &
urg:
		urg -dir simv.vdb -report both
clean:
		@echo "start to clean simulation file"
		-rm -rf csrc *.fsdb *.log verdi* sim* ucli* novas* fontconfig
