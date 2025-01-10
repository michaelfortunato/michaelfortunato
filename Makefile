# This Makefile is to run commands. While justfiles are better purposed
# It is unlikely Make will go away and it works well enough for my needs.

OUT_DIR = bin
FILE_NAME = Resume
AUX_DIR := obj

.PHONY: all
all: build

.PHONY: build
build:
	latexmk -interaction=nonstopmode -aux-directory=$(AUX_DIR) -pdf -synctex=true $(FILE_NAME).tex

.PHONY: install
install: all
	mkdir -p $(OUT_DIR)
	cp $(FILE_NAME).pdf $(OUT_DIR)

.PHONY: open
open: install
	sioyek --new-window "$(OUT_DIR)/$(FILE_NAME).pdf" &

.PHONY: refresh
refresh: install
	sioyek --execute-command reload

.PHONY: clean
clean:
	rm -rf $(AUX_DIR)
