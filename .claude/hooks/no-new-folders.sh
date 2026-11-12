#!/usr/bin/env bash
# Stops the AI creating new folders in the brain, so it has to ask the owner
# where something belongs instead. Plain bash, no jq or python, so it runs on
# a stock Mac and on Windows through Git Bash.
# Exit 2 blocks the tool call; the message on stderr goes back to the AI.

input="$(cat)"
proj="${CLAUDE_PROJECT_DIR:-$PWD}"
proj="${proj//\\//}"

field() {
  printf '%s' "$input" | grep -o "\"$1\"[[:space:]]*:[[:space:]]*\"[^\"]*\"" | head -1 | sed 's/.*:[[:space:]]*"\(.*\)"$/\1/'
}

block() {
  echo "BLOCKED: $1 Never create folders in the brain. Put it in an existing folder using the map in CLAUDE.md, or ask the owner which area it belongs to." >&2
  exit 2
}

case "$(field tool_name)" in
  Write)
    path="$(field file_path)"
    path="${path//\\\\//}"
    path="${path//\\//}"
    [ -z "$path" ] && exit 0
    case "$path" in
      /*|[A-Za-z]:/*) ;;
      *) path="$proj/$path" ;;
    esac
    dir="$(dirname "$path")"
    case "$dir" in
      "$proj"|"$proj"/*) [ -d "$dir" ] || block "The folder ${dir#"$proj"/} doesn't exist." ;;
    esac
    ;;
  Bash)
    if printf '%s' "$input" | grep -Eq '"command"[[:space:]]*:[[:space:]]*"([^"]*[^A-Za-z_-])?mkdir[[:space:]]'; then
      block "Making folders isn't allowed."
    fi
    ;;
esac
exit 0
