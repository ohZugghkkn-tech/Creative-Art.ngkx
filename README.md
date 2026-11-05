# Creative-Art.ngkx

Arbeitsbereich für den HeartGold-Code-Neuaufbau und die Entwicklung/Prüfung visueller Effekte.

> **Ziel:** Pokémon HeartGold ist ein Nintendo-DS-Spiel. Die gewählte externe Code-Referenz `pret/pokeheartgold` ist eine separate, instabile Work-in-Progress-Disassembly/Decompilation. Änderungen daran sind nicht dasselbe wie ein Austausch des Namens in einem bestehenden Spielprojekt.
>
> **Status:** HeartGold-Plan und Prüfschritte sind aktualisiert. Der Spielcode wurde noch nicht geändert, lokal gebaut oder getestet. Zwei priorisierte Uploads sind ungeprüft und keine bestätigte Arbeitsbasis.

## Start hier

1. [HeartGold Code-Baseline und erste Maßnahmen](docs/HEARTGOLD-CODE-BASELINE.md)
2. [HeartGold-Code-Neuaufbau](docs/HEARTGOLD-CODE-REBUILD.md)
3. [Projektstatus](docs/PROJECT-STATUS.md)
4. [Dokumentationsindex](docs/README.md)
5. [Mitwirken](CONTRIBUTING.md)

## Referenzen

| Projekt | Quelle | Rolle |
| --- | --- | --- |
| HeartGold/SoulSilver | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | Gepinnte externe Referenz. Upstream bezeichnet den Stand als instabilen Work-in-Progress. Build-Anforderungen und Nutzungsbedingungen vor Änderungen prüfen. |
| PixelFX | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | Codebasierte Effektbibliothek und Render-/Prüfwerkzeuge; keine fertige Spielintegration. |

Die Community-Repositories sind nicht offiziell mit Nintendo, Game Freak oder The Pokémon Company verbunden. Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen.

## Submodule abrufen

```sh
git clone --recurse-submodules <URL-dieses-Repositories>
# Im existierenden Klon:
git submodule update --init --recursive
```

Submodule sind auf konkrete Commits gepinnt. Nicht beiläufig aktualisieren; Änderungen an externen Projekten nur über berechtigte Forks oder beschreibbare Kopien vornehmen.

## PixelFX

Node.js 18 oder neuer; `ffmpeg` ist für GIF-/MP4-Vorschauen optional. Im PixelFX-Submodule:

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

Effekte werden im PixelFX-Code entworfen und gerendert. Auswahl, DS-taugliche Portierung und Integration in die bestätigte HeartGold-Arbeitsbasis sind zusätzliche Schritte. Vorschau ≠ Integration ≠ Spieltest. Render-Ausgaben bleiben in `records/` des Submodules.
