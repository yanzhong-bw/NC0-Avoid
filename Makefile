PAPER_DIR := preprints/logarithm-free-range-avoidance
BUILD_DIR := $(CURDIR)/build

.PHONY: all pdf clean

all: pdf

pdf:
	mkdir -p "$(BUILD_DIR)"
	cd "$(PAPER_DIR)" && latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$(BUILD_DIR)" paper.tex

clean:
	rm -rf "$(BUILD_DIR)"
