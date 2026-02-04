# =============================================================================
# IC Contest Simulation Makefile Template
# =============================================================================

# top module name without .v
TOP = SET

# testfixture name
TB = testfixture.v

# SystemVerilog (yes/no)
USE_SV = yes

# running in 88 server (yes/no)
USE_FULL64 = yes

# Gate-level use +negtck (yes/no)
USE_NEGTCK = no

# Generate FSDB waveform (yes/no)
USE_FSDB = no


# VCS options
VCS_OPTS = -R
ifeq ($(USE_FULL64), yes)
    VCS_OPTS += -full64
endif
ifeq ($(USE_SV), yes)
    VCS_OPTS += -sverilog
endif
ifeq ($(USE_FSDB), yes)
    VCS_OPTS += +vcs+fsdbon -debug_access+all
endif

# Gate-level extra options
GATE_OPTS = +define+SDF -v tsmc13_neg.v
ifeq ($(USE_NEGTCK), yes)
    GATE_OPTS += +negtck
endif

# =============================================================================
# Targets
# =============================================================================

.PHONY: all rtl syn clean help

all: rtl

# RTL Simulation (Functional)
rtl:
	vcs $(VCS_OPTS) $(TB) $(TOP).v +notimingcheck

# Gate-Level Simulation (Post-Synthesis)
syn:
	vcs $(VCS_OPTS) $(TB) $(TOP)_syn.v $(GATE_OPTS)

# clean up generated files
clean:
	rm -rf simv simv.daidir csrc *.vcd *.fsdb *.log DVEfiles *.vpd ucli.key
	rm -rf work *.wlf transcript vsim.wlf

help:
	@echo "IC Contest Simulation Makefile"
	@echo ""
	@echo "Please modify the variable settings at the beginning of this file before use."
	@echo ""
	@echo "Targets:"
	@echo "  make rtl    - RTL Simulation"
	@echo "  make syn    - Gate-Level Simulation"
	@echo "  make clean  - Clean temporary files"
	@echo "  make help   - Show this help message"