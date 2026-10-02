#!/usr/bin/env bash
# Finds Claude Mods on GitHub that aren't in README.md yet.
# A repo counts as a mod if one of its hooks.json files has a "modules" list.
# Prints a markdown table. Never exits non-zero.

set -u

repos=$(
  {
    for q in "claude mod" "claude mods" "claude code mod" "function hooks claude"; do
      gh api -X GET search/repositories -f q="$q pushed:>2026-09-01" -f per_page=100 \
        --jq '.items[].full_name' 2>/dev/null
    done
    for q in '"modules" filename:hooks.json' 'CLAUDE_CODE_ENABLE_FUNCTION_HOOKS'; do
      gh api -X GET search/code -f q="$q" -f per_page=100 \
        --jq '.items[].repository.full_name' 2>/dev/null
      sleep 6 # code search allows ~10 requests a minute
    done
  } | sort -u
)

listed=$(grep -oiE 'github\.com/[a-z0-9_.-]+/[a-z0-9_.-]+' README.md | cut -d/ -f2- | tr 'A-Z' 'a-z' | sort -u)

echo "| Repo | Stars | What it says |"
echo "|---|---|---|"

for r in $repos; do
  lower=$(echo "$r" | tr 'A-Z' 'a-z')
  echo "$listed" | grep -qx "$lower" && continue
  case "$lower" in anthropics/*) continue ;; esac

  info=$(gh api "repos/$r" --jq 'select(.fork|not) | "\(.stargazers_count)\t\(.description // "" | gsub("\\|";"/"))"' 2>/dev/null) || continue
  [ -z "$info" ] && continue

  is_mod=no
  for p in $(gh api "repos/$r/git/trees/HEAD?recursive=1" --jq '.tree[].path | select(endswith("hooks.json"))' 2>/dev/null | head -5); do
    if gh api "repos/$r/contents/$p" --jq .content 2>/dev/null | base64 -d 2>/dev/null \
      | jq -e '.modules | type == "array" and length > 0' >/dev/null 2>&1; then
      is_mod=yes
      break
    fi
  done
  [ "$is_mod" = yes ] || continue

  printf '| [%s](https://github.com/%s) | %s | %s |\n' "$r" "$r" "${info%%$'\t'*}" "${info#*$'\t'}"
done

exit 0
