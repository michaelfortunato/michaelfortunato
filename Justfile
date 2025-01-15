
ROOT_DIR := justfile_directory()
SRC_DIR := ROOT_DIR
SRC_FILES := shell("find $1 -name '*.tex'",  SRC_DIR)
BUILD_DIR := ROOT_DIR
OBJ_DIR := BUILD_DIR / "obj"
BIN_DIR := BUILD_DIR / "bin"
INSTALL_DIR := ROOT_DIR / "pdf"

# List help
default:
  just --list

# Install 
install: build
  mkdir -p {{INSTALL_DIR}}
  cp {{BIN_DIR}}/* {{INSTALL_DIR}}

# Build `texfile`
build:
  latexmk -interaction=nonstopmode -synctex=true -aux-directory={{OBJ_DIR}} -pdf {{SRC_FILES}}
  mkdir -p {{OBJ_DIR}} {{BIN_DIR}}
  mv {{shell("find $1 -maxdepth 1 -name '*.pdf'", BUILD_DIR)}} {{BIN_DIR}}

#preview: refresh

refresh: install
  sioyek --execute-command reload

clean:
  rm -rf {{OBJ_DIR}} {{BIN_DIR}}
