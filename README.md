# Creative-Art.ngkx

Arbeitsbereich für die visuelle Überarbeitung und den geplanten Code-Neuaufbau auf Basis von **Pokémon HeartGold**. Die aktuelle Projektpriorität sind die zwei zuletzt hochgeladenen Dateien; sie sind jedoch noch nicht als brauchbare, rechtmäßig weitergebbare oder technisch valide Arbeitsgrundlage bestätigt. PixelFX wird als Code-basiertes Werkzeug für Entwurf, Rendering und Prüfung von Pixel-Art-Effekten verwendet.

> **Projektstatus:** Zielrichtung ist von SoulGold auf eine HeartGold-Codebasis umgestellt. `sources/pokeheartgold` ist als gepinntes Referenz-Submodul vorhanden. Der HeartGold-Neuaufbau ist noch nicht gestartet oder gebaut. Die zwei priorisierten Uploads müssen zuerst lokal und sicher validiert werden; sie dürfen nicht erneut ins Repository hochgeladen oder inhaltlich verbreitet werden. Keine vollständigen kommerziellen Spiele oder ROMs einchecken.

## Prioritäten und Einstieg

1. [HeartGold-Code-Neuaufbau: Arbeitsplan und Prüfgates](docs/HEARTGOLD-CODE-REBUILD.md) — maßgeblicher aktueller Arbeitsauftrag, einschließlich der beiden Uploads und PixelFX-Rolle.
2. [Projektstatus und nächste Schritte](docs/PROJECT-STATUS.md) — belegter Status, Blocker und nächste Aktionen.
3. [Dokumentationsindex](docs/README.md) — weitere Projekt- und QA-Dokumente.
4. [Projektleitung mit KI-Unterstützung](docs/PROJECT-MANAGEMENT.md) — Arbeitsablauf und Verantwortlichkeiten.
5. [Mitwirken und Dateien ablegen](CONTRIBUTING.md) — Regeln für Änderungen, Quellen und Schutz von Spieldaten.

Die bisherigen SoulGold-Checklisten und Inventare bleiben als historische Referenz erhalten. Sie gelten nicht als aktueller HeartGold-Umfang, bis sie gegen die gewählte HeartGold-Codebasis überarbeitet wurden.

## Repository-Aufbau

```text
.
├── .agents/skills/pixelfx/   Agenten-Anleitung für PixelFX
├── .github/                 Issue-Formular für visuelle QA
├── assets/                  Hinweise zu eigenen/freigegebenen Assets und Patches
├── docs/                    Status, HeartGold-Plan, QA und historische SoulGold-Referenzen
├── sources/                 Gepinnte externe Git-Submodule
└── README.md                Projekteinstieg
```

Externe Projekte unter `sources/` sind gepinnte Git-Submodule. `sources/pokeheartgold` ist derzeit eine Community-Code-Referenz, keine Bestätigung, dass die beiden Uploads eine lauffähige HeartGold-Codebasis oder eine passende ROM enthalten. Änderungen innerhalb fremder Submodule gehören nicht automatisch zu diesem Repository.

## Quellen und Einordnung

| Projekt | Quelle | Rolle |
| --- | --- | --- |
| PixelFX | [patch-gg/pixelfx](https://github.com/patch-gg/pixelfx) | Codebasierte Effektbibliothek und Render-/Prüfwerkzeuge; keine fertige HeartGold-Integration. |
| HeartGold & SoulSilver | [pret/pokeheartgold](https://github.com/pret/pokeheartgold) | Gepinnte Community-Decompilation und Zielreferenz für den Code-Neuaufbau; Lizenz und Build-Anforderungen vor Nutzung prüfen. |
| SoulGold | [Eemeliri/soulgold](https://github.com/Eemeliri/soulgold) | Frühere Projekt-Referenz; SoulGold-spezifische Pläne sind vorerst historisch. |
| Emerald / FireRed / Pokémon Clover | Upstream-Projekte, siehe `sources/` | Nur technische/vergleichende Referenzen, sofern passend und rechtlich zulässig. |

Die genannten Community-Projekte sind nicht offiziell mit Nintendo, Game Freak oder The Pokémon Company verbunden. Für jede Quelle und jedes Asset sind Lizenz, Herkunft und Nutzungsrechte separat zu beachten.

## Submodule abrufen

```sh
git clone --recurse-submodules <URL-dieses-Repositories>
```

Für einen vorhandenen Klon:

```sh
git submodule update --init --recursive
```

Submodule sind auf konkrete Commits gepinnt. Aktualisiere sie nicht beiläufig; Gitlink-Änderungen müssen geprüft und bewusst committet werden.

## PixelFX lokal verwenden

PixelFX-Tools werden im Submodule-Verzeichnis ausgeführt. Laut Agenten-Anleitung ist Node.js 18 oder neuer erforderlich; `ffmpeg` ist für GIF-/MP4-Vorschauen optional.

```sh
cd sources/pixelfx
node tools/list.mjs frost
node tools/render.mjs fire/torch
node tools/check.mjs fire/torch
node tools/render.mjs ice/frost-nova --sheet
```

PixelFX erzeugt Effekte in Code und kann daraus Vorschauen/Sprite-Sheets rendern. Für HeartGold müssen geeignete Effekte ausgewählt, stilistisch angepasst und in das Spielsystem portiert bzw. eingebunden werden. Automatische Pokémon-Move-Zuordnung, fertige HeartGold-Animationen und GBA-Integration sind damit nicht gegeben. Render-Ergebnisse bleiben im vorgesehenen `records/`-Ordner des Submodules und werden nicht als fertige Spielintegration ausgegeben.
