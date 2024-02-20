{
  description = "NextJs Environment";

  inputs = {
    nixpkgs.url = "github:NixOs/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:

    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        # empty shell. no package installed, for test purpose
        devShell = pkgs.mkShell {
          shellHook = ''
            echo -e "\n
                   __    _ _______ __   __ _______   ___ _______
                  |  |  | |       |  |_|  |       | |   |       |
                  |   |_| |    ___|       |_     _| |   |  _____|
                  |       |   |___|       | |   |   |   | |_____
                  |  _    |    ___||     |  |   |___|   |_____  |
                  | | |   |   |___|   _   | |   |       |_____| |
                  |_|  |__|_______|__| |__| |___|_______|_______|\n\n"
          '';
          buildInputs = [ ];
        };

      }
    );
}
