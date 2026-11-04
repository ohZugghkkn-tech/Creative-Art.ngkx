# Creative-Art.ngkx

Arbeitsplatz für Pixel-Art und Animationen mit PixelFX und Pokémon-Referenzmaterial.

## Projektinhalt

PixelFX und das historische Clover-Projekt liegen direkt als Dateien unter `sources/`. Die drei großen Pokémon-Quellbestände liegen vollständig als komprimierte Archive unter `vendor-archives/` im Projekt, nicht als Git-Submodule oder externe Verknüpfungen. Sie enthalten die Dateien der unten aufgeführten Commits. Die Archivierung hält die Anzahl der gespeicherten Dateien innerhalb der Projektgrenzen.

| Inhalt | Ursprung | Stand |
| --- | --- | --- |
| `sources/pixelfx` | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | `a84159688af3ca37a4be05a0d422b94451b2e24e` |
| `sources/pokemon-clover` | [DEEEEELEEEETE/Pokemon-Clover](https://github.com/DEEEEELEEEETE/Pokemon-Clover) | `448943b97ca6fc6d1d2f091846eeb14b11a4dcb6`, historischer Stand von 2016; keine bestätigte aktuelle Version |
| `vendor-archives/pokeheartgold.tar.gz` | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`; HeartGold und SoulSilver, Community-Projekt in Arbeit |
| `vendor-archives/pokeemerald.tar.gz` | [pret/pokeemerald](https://github.com/pret/pokeemerald) | `731ad5bfd6e6f265508d0efcca0ba42f9dcf5881` |
| `vendor-archives/pokefirered.tar.gz` | [pret/pokefirered](https://github.com/pret/pokefirered) | `ce6406d8c2eaf46d543c8a2606de0c3cb1951982` |

Die Pokémon-Projekte sind Community-Projekte; Clover ist ein Fanprojekt. PixelFX enthält eigene Lizenz- und Quellenhinweise (`LICENSE`, `NOTICE.md`). Die jeweiligen Projekte enthalten keine mitgelieferten kommerziellen ROMs; für manche Builds werden zusätzliche Originaldateien benötigt.

## Quellen verwenden

Nach einem normalen Klon sind alle Archive direkt vorhanden. Ein oder alle Archive lassen sich ohne Internetzugang entpacken:

```sh
./tools/unpack-sources.sh pokeemerald
# Oder alle drei:
./tools/unpack-sources.sh all
```

Die entpackten Ordner unter `sources/` sind Arbeitskopien und werden von Git ignoriert, um die Zahl der Dateien zu begrenzen. Das Skript überschreibt keine vorhandenen Ordner. Änderungen darin werden nicht automatisch gespeichert: benötigte eigene Dateien außerhalb der ignorierten Ordner ablegen. Alternativ einzelne Dateien ohne Entpacken einsehen, z. B. `tar -tzf vendor-archives/pokeemerald.tar.gz`.

## PixelFX für Coding Agents

Die für Coding Agents angepasste Anleitung liegt unter `.agents/skills/pixelfx/SKILL.md`. Node.js 18 oder neuer ist erforderlich; ffmpeg ist für GIF/MP4 optional.

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

Ausgaben landen unter `sources/pixelfx/records/`; fertige Ergebnisse an einem vom Projekt verfolgten Ort ablegen. PixelFX eignet sich besonders für Effekte und Animationen.
