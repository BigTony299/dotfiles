{
  description = "Basic flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        overlays = [ ];

        pkgs = import nixpkgs {
          inherit system overlays;
          config.allowUnfree = false;
        };

      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ lua lua-language-server nixfmt-classic ];
        };
      });
}
