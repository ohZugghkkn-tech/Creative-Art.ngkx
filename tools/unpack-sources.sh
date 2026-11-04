#!/bin/sh
set -eu
root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
extract() {
  name=$1
  dest="$root/sources/$name"
  if [ -e "$dest" ]; then
    printf 'Nicht überschrieben: %s existiert bereits.\n' "$dest" >&2
    return 1
  fi
  mkdir -p "$dest"
  tar -xzf "$root/vendor-archives/$name.tar.gz" -C "$dest"
  printf 'Entpackt: %s\n' "$dest"
}
case "${1:-all}" in
  all) for name in pokeemerald pokefirered pokeheartgold; do extract "$name"; done ;;
  pokeemerald|pokefirered|pokeheartgold) extract "$1" ;;
  *) echo 'Verwendung: tools/unpack-sources.sh [all|pokeemerald|pokefirered|pokeheartgold]' >&2; exit 2 ;;
esac
