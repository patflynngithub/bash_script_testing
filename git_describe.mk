
# can change Fortran compiler with make command line parameter
# e.g., make FC=ifort -f git_describe.mk
FC := gfortran

# NEPTUNE_BUILD_ID := $(shell git describe --long --dirty)
# NEPTUNE_BUILD_ID := $(shell echo "no space" | sed 's/ /_/g')

NEPTUNE_BUILD_ID := $(shell git describe --long --dirty  | sed 's/ /_/g')
CPPFLAGS_LOG := -DBUILD_ID=\"$(NEPTUNE_BUILD_ID)\"

all:
	@echo "NEPTUNE_BUILD_ID = $(NEPTUNE_BUILD_ID)"
	@echo "CPPFLAGS_LOG = $(CPPFLAGS_LOG)"
	@echo "compiler: $(FC)"
	$(FC) $(CPPFLAGS_LOG) -o git_describe git_describe.F90

