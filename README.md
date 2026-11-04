# Creative-Art.ngkx

Arbeitsplatz für Pixel-Art und Animationen mit PixelFX sowie Pokémon-Stilreferenzen.

## Quellen

Die Quellen liegen als Git-Submodule unter `sources/`. Die eingebundenen Commits entsprechen dem jeweiligen Standard-Branch zum Zeitpunkt der Einrichtung; sie sind festgehalten, damit die Einrichtung reproduzierbar bleibt.

| Projekt | Quelle | Hinweis |
| --- | --- | --- |
| PixelFX | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | Originalprojekt; Code und Effekte MIT, siehe dort auch `NOTICE.md`. |
| HeartGold & SoulSilver | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | Community-Decompilation für beide Spiele, noch in Arbeit. „SoulGold“ wird hier als SoulSilver verstanden. |
| Emerald | [pret/pokeemerald](https://github.com/pret/pokeemerald) | Community-Decompilation. |
| FireRed | [pret/pokefirered](https://github.com/pret/pokefirered) | Community-Decompilation, auch für LeafGreen. |
| Pokémon Clover | [DEEEEELEEEETE/Pokemon-Clover](https://github.com/DEEEEELEEEETE/Pokemon-Clover) | Historisches öffentliches Entwickler-Repository, letzter Commit 2016. Nicht als aktuelle Release-Version verifiziert; Clover ist ein Fanprojekt. |

Die `pret`-Projekte sind **nicht offizielle Repositories von Nintendo, Game Freak oder The Pokémon Company**. Es sind keine vollständigen kommerziellen Spiele oder ROMs enthalten; je nach Projekt können eigene Originaldateien für Builds nötig sein. Die Quellen und Assets unterliegen möglicherweise Rechten Dritter: Lizenz und Nutzungsrechte vor Weiterverwendung prüfen. Clover kann anstößige Inhalte enthalten.

## Einrichtung

Bei einem neuen Klon die Submodule laden:

```sh
git clone --recurse-submodules <URL-dieses-Repositories>
# Oder bei einem bereits vorhandenen Klon:
git submodule update --init --recursive
```

Die Submodule zeigen auf feste Commits. Ein Update erfolgt bewusst mit `git submodule update --remote` und anschließendem Prüfen und Speichern der neuen Gitlinks. Änderungen innerhalb eines Submoduls werden **nicht** automatisch im übergeordneten Repository gespeichert.

## PixelFX für Coding Agents

Eine agentenunabhängige Projektkopie der Skill-Anleitung liegt unter `.agents/skills/pixelfx/SKILL.md` (aus PixelFX übernommen und um Projekthinweise ergänzt). Sie benötigt kein Claude-Plugin. Node.js 18 oder neuer ist erforderlich; ffmpeg ist für GIF/MP4 optional.

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

Ausgaben landen unter `sources/pixelfx/records/`. Für eigene Effekte eine separate beschreibbare Kopie von PixelFX verwenden und fertige Ergebnisse außerhalb von `sources/` ablegen, damit sie nicht in einem Submodul verloren gehen. PixelFX eignet sich vor allem für Effekte und Animationen; Pokémon-Projekte dienen als Referenzen. Eigene Motive statt geschützter Figuren, Sprites und Logos verwenden.
