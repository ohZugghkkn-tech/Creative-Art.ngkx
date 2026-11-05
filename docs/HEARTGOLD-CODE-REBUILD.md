# HeartGold-Code-Neuaufbau — Arbeitsauftrag

**Ziel:** Eine saubere, nachvollziehbare HeartGold-Code-Arbeitsbasis herstellen. `pret/pokeheartgold` ist eine externe DS-Disassembly/Decompilation; der Upstream beschreibt sie als instabilen Work-in-Progress.

## Prioritäten

### P0 — aktuelle Bereinigung und Uploads

Im geprüften aktuellen `main`-Tree sind die früheren projektspezifischen Dokumente und das frühere Archiv nicht mehr vorhanden. Noch sichtbar und für das HeartGold-/PixelFX-Ziel unnötig sind die Gitlinks `sources/pokeemerald`, `sources/pokefirered` und `sources/pokemon-clover`. Diese sauber aus dem Tree entfernen und danach `.gitmodules` aktualisieren; `sources/pokeheartgold` und `sources/pixelfx` behalten.

Die zwei priorisierten Dateien bleiben unangetastet, aber ungeprüft:

- `Pokemon - HeartGold Version (Europe).zip` — Commit-Vorschau enthält eine Download-Fehlermeldung statt eines belegten gültigen Archivs.
- `decoded-20261105072839.bin` — Dateiformat und Herkunft unbekannt.

- [ ] Eigentümer klärt Herkunft, Rechte und Zweck der beiden Uploads.
- [ ] Unbekannte Binärdateien nicht ausführen oder erneut hochladen.
- [ ] Keine vollständige kommerzielle ROM als Ersatz einchecken.
- [ ] Historienbereinigung nur separat mit Backup und Abstimmung durchführen.

### P1 — HeartGold-Codebasis

- Referenz: `sources/pokeheartgold` → `pret/pokeheartgold` @ `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`.
- Upstream warnt vor instabilem WIP-Status und möglichem Absturz bei Änderungen an Funktionsgrößen/Datenstrukturen; Setup steht im Upstream-`INSTALL.md`.
- [ ] Nutzungshinweise, Setup und exakten Stand prüfen.
- [ ] Baseline lokal und mit zulässigen Voraussetzungen bauen und protokollieren.
- [ ] Danach kleine, isolierte Änderungen vornehmen und testen.

### P2 — PixelFX

PixelFX ist ein Code-/Render-/Qualitätswerkzeug, keine fertige Integration:

1. Vorhandene Effekte mit `node tools/list.mjs <begriff>` suchen.
2. Kandidaten rendern und Frames/Bewegung prüfen.
3. Neue Effekte als Code entwerfen, iterativ rendern und `tools/check.mjs` ausführen.
4. HeartGold-DS-taugliche Portierung und Plattformressourcen separat planen.
5. Portierung, Codeintegration und In-Game-Test getrennt nachweisen.

### P3 — QA und Integration

- [ ] HeartGold-spezifisches Inventar mit Quellpfaden/Commit erstellen.
- [ ] Einen kleinen Fall vom Codefund bis zum reproduzierbaren Test bearbeiten.
- [ ] Vorher/Nachher-Nachweise, Patch-Basis und Grenzen dokumentieren.

## Werkzeuggrenze

GitHub-Datei-Updates können vorhandene Textdateien ändern, aber keine bestehenden Dateien oder Submodule-Gitlinks löschen und keinen lokalen Build ausführen. Die Löschmappe enthält daher die noch offenen manuellen Git-Entfernungen. Ignore-Regeln entfernen keine getrackten Dateien.

## Gates

- **A:** Unnötige Gitlinks bereinigt; Upload-Eignung geklärt.
- **B:** HeartGold-Quelle und reproduzierbare Baseline geklärt.
- **C:** Änderung/PixelFX-Effekt zulässig portiert und separat getestet.

Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen. Keine Rechte oder Dateiformate aus Namen ableiten.
