# Creative-Art.ngkx

Arbeitsbereich für den HeartGold-Code-Neuaufbau und die Entwicklung sowie Prüfung visueller Effekte.

> **Status:** HeartGold ist ein Nintendo-DS-Spiel. `pret/pokeheartgold` ist eine separate Community-Disassembly/Decompilation und laut Upstream ein instabiler Work-in-Progress. Der HeartGold-Code wurde in diesem Repository nicht geändert, lokal gebaut oder getestet. Die zwei priorisierten Uploads sind ungeprüft.

## Einstieg

- [HeartGold Code-Baseline und erste Maßnahmen](docs/HEARTGOLD-CODE-BASELINE.md)
- [HeartGold-Code-Neuaufbau](docs/HEARTGOLD-CODE-REBUILD.md)
- [Projektstatus](docs/PROJECT-STATUS.md)
- [Dokumentationsindex](docs/README.md)
- [Mitwirken](CONTRIBUTING.md)
- [Manuelle Bereinigungsliste](DELETE-MAPPE/README.md)

## Quellen

| Projekt | Quelle | Rolle |
| --- | --- | --- |
| HeartGold/SoulSilver | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | Gepinnte externe Referenz. Vor Änderungen Build-Anforderungen und Nutzungsbedingungen prüfen. |
| PixelFX | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | Codebasierte Effektbibliothek und Render-/Prüfwerkzeuge; keine fertige Spielintegration. |

Community-Repositories sind nicht offiziell mit Nintendo, Game Freak oder The Pokémon Company verbunden. Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen.

## Submodule abrufen

```sh
git clone --recurse-submodules <URL-dieses-Repositories>
# Im existierenden Klon:
git submodule update --init --recursive
```

Submodule sind auf Commits gepinnt. Nicht beiläufig aktualisieren; Änderungen an externen Projekten nur über berechtigte Forks oder beschreibbare Kopien vornehmen.

## PixelFX

Node.js 18 oder neuer; `ffmpeg` ist für GIF-/MP4-Vorschauen optional. Im PixelFX-Submodule:

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

PixelFX-Effekte entstehen als Code und können gerendert und geprüft werden. Für HeartGold wären DS-taugliche Portierung, Anpassung an Spielressourcen und Integration separate Arbeitsschritte. Vorschau ist kein Integrations- oder Spieltestnachweis. Render-Ausgaben bleiben in `records/` des Submodules.
