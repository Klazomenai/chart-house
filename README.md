# chart-house

> Voyage planner for the Offshore Fleet — landing page for [Bridge](https://github.com/Klazomenai/bridge) and [DeckChat](https://github.com/Klazomenai/deck-chat).

[![License: AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-blue.svg)](https://www.gnu.org/licenses/agpl-3.0)
[![Built with Zola](https://img.shields.io/badge/built%20with-Zola-orange.svg)](https://www.getzola.org/)
[![Built with Nix](https://img.shields.io/badge/built%20with-Nix-blue.svg)](https://nixos.org/)

A static site introducing the **AI crew at sea** — voice-driven AI assistants
backed by Claude, run on your own infrastructure, talked to over end-to-end
encrypted Matrix from a phone in your pocket.

This is the **Developer Preview** site. Alpha software, rough edges, the keel
freshly laid.

## Stack

- **[Zola](https://www.getzola.org/)** — Rust-based static site generator
- **[Nix](https://nixos.org/)** flake — reproducible build (`nix build .#default`)
- **[devenv](https://devenv.sh/)** — local dev shell
- **GitHub Pages** — hosting (Actions-deployed)

## Local development

You need [Nix](https://nixos.org/download.html) with flakes enabled, plus
[devenv](https://devenv.sh/getting-started/).

```bash
cd chart-house
devenv shell           # enter the dev shell
dev                    # zola serve on :1111 with live reload
build                  # zola build into public/
clean                  # rm public/
```

To verify the reproducible Nix build matches:

```bash
nix build .#default    # produces ./result with the site
```

## Layout

```
.
├── config.toml              — Zola configuration
├── content/                 — page markdown (home, crew, roadmap, about)
├── templates/               — Tera templates (base.html, index.html, ...)
├── sass/                    — SCSS (compiled at build time)
├── static/                  — copied verbatim into public/
├── data/                    — fetched roadmap JSON (gitignored, regenerated)
├── scripts/fetch-roadmap.sh — pulls milestones from GitHub for build-time
├── flake.nix                — Nix flake (build derivation)
└── devenv.nix               — devenv shell + scripts
```

## The Fleet

| Project | Role | Source |
|---|---|---|
| [Bridge](https://github.com/Klazomenai/bridge) | AI crew orchestrator (Go, Matrix bot) | AGPL-3.0-or-later |
| [DeckChat](https://github.com/Klazomenai/deck-chat) | Android voice client (Kotlin) | AGPL-3.0-or-later |
| AKeyRA | Infrastructure vessel | Private |

## Contributing

Read [CONTRIBUTING.md](CONTRIBUTING.md). We're in early alpha — issues, ideas,
and corrections welcome. Signed commits and conventional commits required.

## Security

Read [SECURITY.md](SECURITY.md). Vulnerabilities should be reported via GitHub
Private Vulnerability Reporting.

## Licence

Licensed under the [GNU Affero General Public License, version 3 or later](LICENSE.md) (AGPL-3.0-or-later).

### Why AGPL?

The chart house is the public face of the Offshore Fleet — its purpose
is to be read, forked for inspiration, and learned from. AGPL keeps the
share-alike spirit intact: anyone who forks chart-house and serves
their own version must offer source under the same terms.

More importantly, AGPL is the licence the rest of the Offshore Fleet
sails under (Bridge, DeckChat). Holding chart-house to the same
standard means contributors know exactly what they're signing up for,
and there's no per-repo decision tree about which licence applies where.

Klazomenai may relicense chart-house under any **OSI-approved
open-source licence** in future, exercising the sublicensing rights
granted by contributors via the [Contributor Licence Agreement](https://gist.github.com/Klazomenai/b541b6605a823e234e3343a7145035de) —
but never under proprietary or source-available terms. Contributors
retain copyright in their contributions. See [CONTRIBUTING.md](CONTRIBUTING.md)
for the contribution workflow and [STEWARDSHIP.md](STEWARDSHIP.md) for
the public commitments behind the licence stance.
