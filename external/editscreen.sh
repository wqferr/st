#!/usr/bin/env zsh
tmpfile=$(mktemp /tmp/st-edit.XXXXXX)
trap  'rm "$tmpfile"' 0 1 15
cat >"$tmpfile"
st -c float -e "kak" "$tmpfile"
