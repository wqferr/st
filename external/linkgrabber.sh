#!/usr/bin/env zsh
regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>"'\''>\):]'
# TODO maybe use fzf instead of dmenu? might be hard
url=$(grep -Po "$regex" | uniq | dmenu -p "Go:" -w "$WINDOWID" -g 1 -l 7) || exit
firefox "$url"
