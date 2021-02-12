# BUILD_ID := $(shell git describe --long --dirty)
# BUILD_ID := $(shell echo "no space" | sed 's/ /_/g')
BUILD_ID := $(shell git describe --long --dirty  | sed 's/ /_/g')

all:
	@echo $(BUILD_ID)

