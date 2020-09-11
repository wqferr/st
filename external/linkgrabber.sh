#!/usr/bin/env zsh
regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>"'\''>\):]'
url=$(tac | grep -m 20 -Po "$regex" | sort -u | dmenu -p "Go:" -w "$WINDOWID" -g 1 -l 5) || exit
firefox "$url"
