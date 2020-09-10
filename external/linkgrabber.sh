#!/usr/bin/env zsh
regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
# TODO maybe use fzf instead of dmenu? might be hard
url=$(grep -Po "$regex" | dmenu -p "Go:" -w "$WINDOWID") || exit
$BROWSER "$url"
