{
  description = "A simple LaTeX flake for writing documents with latexmk";
  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; };
  outputs = { self, nixpkgs }:
    let
      supportedSystems =
        [ "x86_64-linux" "x86_64-darwin" "aarch64-linux" "aarch64-darwin" ];
      # Helper function to generate an attrset '{ x86_64-linux = f "x86_64-linux"; ... }'.
      forAllSupportedSystems = nixpkgs.lib.genAttrs supportedSystems;
    in {
      packages = forAllSupportedSystems (system:
        let pkgs = import nixpkgs { system = system; };
        in {
          default = pkgs.stdenv.mkDerivation {
            name = "Latex Book";
            src = ./.;
            buildInputs = [ pkgs.texliveFull ];
            buildPhase = ''
              make INSTALL_DIR=$out
            '';
            installPhase = ''
              make install INSTALL_DIR=$out
            '';

          };
        });
    };
}
