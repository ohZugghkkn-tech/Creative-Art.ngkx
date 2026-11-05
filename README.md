# Creative-Art.ngkx

Arbeitsbereich für die Entwicklung und Prüfung visueller Effekte sowie die Planung einer HeartGold-Code-Arbeitsbasis.

> **Wichtig: HeartGold ist nicht einfach SoulGold mit ausgetauschtem Namen.** SoulGold war ein GBA-Projekt mit eigenen Änderungen/Visual-QA-Zielen. Pokémon HeartGold ist ein Nintendo-DS-Spiel. `pret/pokeheartgold` ist eine separate, ausdrücklich als instabil und Work-in-Progress beschriebene Disassembly/Decompilation-Referenz. Alte SoulGold-Assets, Inventare, Skripte und PixelFX-Effekte sind nicht automatisch kompatibel.

> **Aktueller Stand:** Auf diesem Branch sind Planung und Prüfschritte aktualisiert. Der tatsächliche HeartGold-Code wurde nicht geändert, lokal gebaut oder im Spiel getestet. Die zwei priorisierten Uploads sind ungeprüft und keine bestätigte Arbeitsbasis. Sie dürfen nicht erneut hochgeladen oder inhaltlich verbreitet werden.

## Prioritäten

1. [HeartGold Code-Baseline und Arbeitsplan](docs/HEARTGOLD-CODE-BASELINE.md) — Unterschiede, Voraussetzungen und erste sichere Arbeitsschritte.
2. [HeartGold-Code-Neuaufbau](docs/HEARTGOLD-CODE-REBUILD.md) — Upload-Priorität, Projekt-Gates und PixelFX-Ablauf.
3. [Projektstatus](docs/PROJECT-STATUS.md) — belegte Fakten und Blocker.
4. [Dokumentationsindex](docs/README.md) und [Mitwirken](CONTRIBUTING.md).

Bisherige SoulGold-Dokumente bleiben als historische Referenzen erhalten. Sie gelten nicht als HeartGold-Plan, bis sie gegen die DS-Codebasis neu geprüft wurden.

## Quellen

| Projekt | Quelle | Rolle |
| --- | --- | --- |
| HeartGold/SoulSilver | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | Gepinnte externe Referenz. Upstream beschreibt den Stand als instabilen Work-in-Progress; Änderungen an Funktionen/Datenstrukturen können Abstürze verursachen. Build-Anforderungen und Lizenz vor Nutzung prüfen. |
| PixelFX | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | Codebasierte Effektbibliothek, Render- und Prüfwerkzeuge; keine fertige Pokémon-Integration. |
| SoulGold | [Eemeliri/soulgold](https://github.com/Eemeliri/soulgold) | Frühere, separate GBA-Projekt-Referenz. |

Die Community-Repositories sind nicht offiziell mit Nintendo, Game Freak oder The Pokémon Company verbunden. Keine kommerziellen Spiele, vollständigen ROMs oder Spielstände hochladen.

## Submodule

```sh
git clone --recurse-submodules <URL-dieses-Repositories>
# Im existierenden Klon:
git submodule update --init --recursive
```

Submodule sind auf Commits gepinnt. Nicht beiläufig aktualisieren; Änderungen an externen Projekten nur über berechtigte Forks/Kopien vornehmen.

## PixelFX

Node.js 18 oder neuer; `ffmpeg` ist für GIF-/MP4-Vorschauen optional. Im PixelFX-Submodule:

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

Effekte werden im PixelFX-Code entworfen und gerendert. Für HeartGold wären Auswahl, stilistische Anpassung, DS-taugliche Portierung und Integration in die bestätigte Arbeitsbasis zusätzliche Schritte. Vorschau ≠ Integration ≠ Spieltest. Render-Ausgaben bleiben in `records/` des Submodules.
