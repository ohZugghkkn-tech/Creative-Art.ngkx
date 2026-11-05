# HeartGold-Code-Neuaufbau — Arbeitsauftrag

**Ziel:** Eine saubere, nachvollziehbare HeartGold-Code-Arbeitsbasis herstellen. HeartGold ist ein Nintendo-DS-Spiel und `pret/pokeheartgold` eine separate instabile Work-in-Progress-Disassembly/Decompilation. Keine früheren Assets, Zuordnungen oder GBA-Workflows blind übernehmen.

## Prioritäten

### P0 — Altbestand bereinigen und Uploads klären

- Aktuelle HeartGold-Arbeitsdateien: `Pokemon - HeartGold Version (Europe).zip`, `decoded-20261105072839.bin`.
- Die ZIP-Commit-Vorschau zeigte eine ROMSFUN-Fehlermeldung als Text, nicht den Nachweis eines Archivs. Das BIN-Format und seine Herkunft sind unbekannt.
- [ ] Aus dem aktuellen Git-Tree frühere Projektdateien, ungeeignete Archive und unverbundene Referenz-Gitlinks entfernen.
- [ ] Herkunft, Rechte und Zweck der beiden priorisierten Dateien klären.
- [ ] Unbekannte Binärdateien nicht ausführen oder erneut hochladen.
- [ ] Keine vollständige kommerzielle ROM als Ersatz einchecken; zulässige Quelltexte, eigene Assets oder erlaubte Patches verwenden.
- [ ] History-Rewrite nur bei ausdrücklich gewünschter vollständiger Historienbereinigung, mit Backup und Teamabstimmung durchführen.

### P1 — HeartGold-Codebasis

- `sources/pokeheartgold` zeigt auf `pret/pokeheartgold` @ `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`.
- Upstream warnt vor instabilem WIP-Status und möglichem Absturz bei Änderungen an Funktionsgrößen/Datenstrukturen; Setup steht im Upstream-`INSTALL.md`.
- [ ] Nutzungsbedingungen, Setup und exakten Stand prüfen.
- [ ] Baseline nur lokal mit rechtmäßigen Voraussetzungen bauen und protokollieren.
- [ ] Kleine, isolierte Änderungen vornehmen und testen.

### P2 — PixelFX für HeartGold nutzen

PixelFX ist ein Code-/Render-/Qualitätswerkzeug, keine fertige Integration:

1. Vorhandene Effekte mit `node tools/list.mjs <begriff>` suchen.
2. Kandidaten rendern und Frames/Bewegung prüfen.
3. Neue Effekte im Code entwerfen, mindestens drei Render-/Review-/Refine-Runden machen und `tools/check.mjs` ausführen.
4. Für HeartGold DS-tauglich portieren und Plattformressourcen berücksichtigen.
5. Portierung, Codeintegration und In-Game-Test getrennt nachweisen.

### P3 — QA und Integration

- [ ] HeartGold-spezifisches Inventar mit Quellpfaden/Commit erstellen.
- [ ] Einen kleinen Fall vom Codefund bis zum reproduzierbaren Test bearbeiten.
- [ ] Vorher/Nachher-Nachweise, Patch-Basis und Grenzen dokumentieren.

## Einschränkung der aktuellen Bereinigung

Die bisher verfügbaren GitHub-Schreibwerkzeuge können Dateien erstellen/aktualisieren, aber keine vorhandenen Dateien, Archive oder Gitlinks löschen und keine Git-Historie umschreiben. Deshalb ist die nachfolgend dokumentierte Aufräumaktion noch **nicht vollständig ausgeführt**. Erforderlich ist ein lokaler Git-Entfernungsschritt für die Altpfade im Projektstatus; Ignore-Regeln allein entfernen nichts.

## Gates

- **A:** Altbestand und Upload-Eignung geklärt.
- **B:** HeartGold-Quelle und reproduzierbare Baseline geklärt.
- **C:** Änderung/PixelFX-Effekt zulässig portiert und separat getestet.

Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen. Keine Rechte oder Dateiformate aus Namen ableiten. Keine Änderungen an fremden Submodules ohne Berechtigung.
