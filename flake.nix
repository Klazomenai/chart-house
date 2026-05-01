{
  description = "Chart House — voyage planner for the Offshore Fleet";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "x86_64-darwin" ];
      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      # Reproducible site build. `nix build .#default` produces the
      # static site at ./result (a symlink into the Nix store).
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

      # CI / governance tooling pinned to the flake's nixpkgs revision
      # (see flake.lock). Used by GitHub Actions workflows via
      # `nix develop --command <tool>` and locally via `nix develop`.
      # Drift only on intentional `nix flake update`.
      devShells = forAllSystems (system:
        let pkgs = nixpkgs.legacyPackages.${system};
        in {
          default = pkgs.mkShell {
            packages = [
              pkgs.zola
              pkgs.actionlint
            ];
          };
        }
      );
    };
}
