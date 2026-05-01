{ pkgs, ... }:

{
  packages = [
    pkgs.zola
    pkgs.jq
    pkgs.curl
  ];

  scripts = {
    dev.exec = ''
      zola serve --interface 0.0.0.0 --port 1111 --base-url http://localhost
    '';

    build.exec = ''
      zola build
    '';

    fetch-roadmap.exec = ''
      set -euo pipefail
      REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
      "$REPO_ROOT/scripts/fetch-roadmap.sh"
    '';

    clean.exec = ''
      rm -rf public/
      echo "Decks washed."
    '';
  };

  enterShell = ''
    echo ""
    echo "  ⚓ Chart House — Voyage Planner"
    echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "  Workflow:"
    echo "    1. fetch-roadmap   🗺️ Chart the waters — pull milestones from GitHub"
    echo "    2. dev             ⛵ Hoist the sails — dev server on :1111"
    echo ""
    echo "  Other:"
    echo "    build              🛠️ Lay the keel — build static site to public/"
    echo "    clean              🌊 Wash the decks — remove build output"
    echo ""
  '';
}
