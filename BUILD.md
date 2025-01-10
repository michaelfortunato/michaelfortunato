# Building Resume

I use nix to build my TeX documents.

For release, in a terminal, run

```bash
nix build
```

and find the file `Resume.pdf` in the `result/` folder.

For developing, first run

```bash
nix shell
```

to get a development environment. Then run

```bash
make build
```
