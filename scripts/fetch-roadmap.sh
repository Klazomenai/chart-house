#!/usr/bin/env bash
# Fetch milestones and issues from GitHub API for build-time rendering.
# Writes JSON to data/ directory for Zola templates.
# Requires: gh (GitHub CLI), jq
set -euo pipefail

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
DATA_DIR="$REPO_ROOT/data"
mkdir -p "$DATA_DIR"

REPOS=("Klazomenai/bridge" "Klazomenai/deck-chat")

for repo in "${REPOS[@]}"; do
  slug="${repo##*/}"
  echo "Fetching milestones for $repo..."
  gh api "repos/$repo/milestones?state=all&per_page=100" \
    | jq '[.[] | {number, title, description, state, open_issues, closed_issues, html_url}]' \
    > "$DATA_DIR/${slug}-milestones.json"

  echo "Fetching open issues for $repo..."
  gh api "repos/$repo/issues?state=all&per_page=100" \
    | jq '[.[] | select(.pull_request == null) | {number, title, state, labels: [.labels[].name], milestone: .milestone.title, html_url}]' \
    > "$DATA_DIR/${slug}-issues.json"
done

echo "Roadmap data written to $DATA_DIR/"
