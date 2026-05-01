{
  description = "Chart House — voyage planner for the Klazomenai fleet";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "x86_64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      packages = forAllSystems (system:
        let pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.stdenv.mkDerivation {
            pname = "chart-house";
            version = "0.1.0";
            src = ./.;
            nativeBuildInputs = [ pkgs.zola ];
            buildPhase = ''
              zola build -o $out
            '';
            dontInstall = true;
          };
        }
      );
    };
}
