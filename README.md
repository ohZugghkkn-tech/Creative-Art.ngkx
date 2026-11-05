# Creative-Art.ngkx

Arbeitsbereich für Pixel-Art, Animationen und eine geplante visuelle Qualitätsprüfung von SoulGold. Dieses Repository bündelt Referenzprojekte als Git-Submodule und dokumentiert den geplanten Prüf- und Verbesserungsprozess.

> **Status:** Die Projektplanung und Referenzstruktur sind vorhanden. Eine vollständige Move-Inventur, belegte visuelle Prüfung und getestete Integration in SoulGold sind in diesem Repository noch nicht dokumentiert. Siehe [Projektstatus](docs/PROJECT-STATUS.md).

## Orientierung

- [Dokumentationsindex](docs/README.md) – Einstieg in Planung, Checklisten und Status.
- [Projektstatus und nächste Schritte](docs/PROJECT-STATUS.md) – Fakten, offene Voraussetzungen und empfohlene Reihenfolge.
- [Mitwirken und Dateien ablegen](CONTRIBUTING.md) – Arbeitsablauf, Benennung und Umgang mit Assets.
- [SoulGold 1.3 Visual-QA-Arbeitsauftrag](docs/TODO-SoulGold-1.3-Visual-QA.md)
- [SoulGold 1.2 PixelFX-Effekt-Checkliste](docs/SoulGold-1.2-PixelFX-Effekt-Checkliste.md)

## Repository-Aufbau

```text
.
├── .agents/skills/pixelfx/   Agenten-Anleitung für PixelFX
├── assets/                   Ablagehinweise für zulässige eigene Assets und Patches
├── docs/                     Projektstatus, Planung und Prüfchecklisten
├── sources/                  Gepinnte externe Git-Submodule
├── .gitmodules               Submodule und Upstream-URLs
├── CONTRIBUTING.md           Regeln für Beiträge und Dateien
└── README.md                 Einstieg
```

Die Unterprojekte in `sources/` sind Referenzen und werden als Git-Submodule auf festgehaltene Commits eingebunden. SoulGold selbst ist derzeit **nicht** in `.gitmodules` als bearbeitbares Quell-Submodule eingetragen. Details und Blocker stehen im [Projektstatus](docs/PROJECT-STATUS.md).

## Quellen und Lizenzhinweise

| Projekt | Quelle | Einordnung |
| --- | --- | --- |
| PixelFX | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | Upstream-Projekt; Lizenz- und NOTICE-Angaben im Upstream beachten. |
| HeartGold & SoulSilver | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | Community-Decompilation, nicht SoulGold. |
| Emerald | [pret/pokeemerald](https://github.com/pret/pokeemerald) | Community-Decompilation und technische Referenz. |
| FireRed | [pret/pokefirered](https://github.com/pret/pokefirered) | Community-Decompilation und technische Referenz. |
| Pokémon Clover | [DEEEEELEEEETE/Pokemon-Clover](https://github.com/DEEEEELEEEETE/Pokemon-Clover) | Externe Referenz; Upstream-Status und Lizenz vor Nutzung prüfen. |

Die genannten Community-Projekte sind keine offiziellen Repositories von Nintendo, Game Freak oder The Pokémon Company. Prüfe für jedes Asset, jede Quelle und jeden Patch die jeweilige Lizenz und die Rechte zur Weitergabe. **Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen.** Lade nur eigene bzw. zur Veröffentlichung freigegebene Quelldateien, Grafiken und Patches hoch.

## Klonen

Submodule beim Klonen mit abrufen:

```sh
git clone --recurse-submodules <URL-dieses-Repositories>
```

Für einen bereits vorhandenen Klon:

```sh
git submodule update --init --recursive
```

Submodule sind auf konkrete Commits gepinnt. Aktualisiere sie nicht beiläufig: Änderungen am Gitlink müssen geprüft und bewusst committet werden.

## PixelFX lokal verwenden

Die PixelFX-Werkzeuge werden im Submodule-Verzeichnis ausgeführt. Node.js 18 oder neuer wird laut Agenten-Anleitung benötigt; `ffmpeg` ist für GIF-/MP4-Vorschauen optional.

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

PixelFX-Ausgaben entstehen im Submodule unter `records/`. Das Submodule ist Referenzmaterial: eigene Änderungen dort nicht als Änderung dieses Haupt-Repositories behandeln. Für den projektspezifischen Ablauf siehe [PixelFX-Skill](.agents/skills/pixelfx/SKILL.md).
