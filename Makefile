# This Makefile is to run commands. While justfiles are better purposed
# It is unlikely Make will go away and it works well enough for my needs.

SRC_DIR := .
OBJ_DIR := target/obj
BIN_DIR := target/bin
INSTALL_DIR := .

SRC := $(shell find $(SRC_DIR) -maxdepth 1 -name '*.tex')
BIN := $(shell find $(BIN_DIR) -maxdepth 1 -name '*.pdf')
OBJ := $(shell find $(OBJ_DIR) -maxdepth 1 -name '*')


.PHONY: build
build: _makedirs
	latexmk -interaction=nonstopmode -aux-directory=$(OBJ_DIR) -output-directory=$(BIN_DIR) -pdf -synctex=true $(SRC)


open: build
	sioyek --new-window "$(FILE)" &

.PHONY: refresh
refresh: install
	sioyek --execute-command reload

.PHONY: makedirs
_makedirs:
	mkdir -p $(OBJ_DIR) $(BIN_DIR) $(INSTALL_DIR)


.PHONY: clean
clean:
	rm -rf $(BIN) $(OBJ)

## Helper scripts

.PHONY: install
install: build
	cp -r $(BIN_DIR)/* $(INSTALL_DIR)

.PHONY: buildanew
buildanew: clean bulid

