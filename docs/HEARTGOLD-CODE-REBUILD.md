# HeartGold-Code-Neuaufbau — Arbeitsauftrag

**Ziel:** Das Projekt von der SoulGold-Ausrichtung auf einen nachvollziehbaren HeartGold-Code-Arbeitsablauf umstellen. Dies ist mehr als ein Namenswechsel: HeartGold ist ein Nintendo-DS-Spiel; SoulGold war eine separate GBA-Projektbasis. Der HeartGold-Upstream `pret/pokeheartgold` beschreibt seine Disassembly/Decompilation als instabilen Work-in-Progress. Keine SoulGold-Assets, Move-Zuordnungen oder GBA-Workflows blind übernehmen.

## Projektprioritäten

### P0 — Die zwei letzten Uploads klären

1. `Pokemon - HeartGold Version (Europe).zip`
2. `decoded-20261105072839.bin`

Die ZIP-Commit-Vorschau zeigte eine ROMSFUN-Fehlermeldung als Text, nicht den Nachweis eines gültigen Archivs. Format, Herkunft und Rechte der BIN-Datei sind nicht bestätigt. Beide Uploads sind priorisierte, aber ungeprüfte Eingaben und keine bestätigte Codebasis.

- [ ] Herkunft, Rechte und beabsichtigten Zweck klären.
- [ ] Unbekannte Binärdateien nicht ausführen oder erneut hochladen.
- [ ] Nicht eine vollständige kommerzielle ROM als Ersatz anfordern oder ins Repository einchecken; stattdessen zulässige Quelltexte, eigene Assets oder erlaubte Patches verwenden.
- [ ] Unklare Dateien als blockiert belassen.

### P1 — HeartGold-Codebasis

- Das vorhandene `sources/pokeheartgold`-Submodule zeigt auf `pret/pokeheartgold`, Commit `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`.
- Der Upstream-README warnt vor instabilem WIP-Status und möglichem Absturz bei Änderungen an Funktionsgrößen/Datenstrukturen. Setup-Anforderungen stehen im Upstream-`INSTALL.md`.
- [ ] Lizenz/Nutzungshinweise, Build-Anleitung und exakten Referenzstand prüfen.
- [ ] Baseline lokal und nur mit rechtmäßigen Voraussetzungen bauen/testen; Ergebnis mit Commit und Umgebung festhalten.
- [ ] Codeänderungen zunächst klein und isoliert halten.

### P2 — PixelFX für HeartGold nutzen

PixelFX ist ein Code-/Render-/Qualitätswerkzeug, keine fertige Spielintegration:

1. Vorhandene Effekte mit `node tools/list.mjs <begriff>` suchen.
2. Kandidaten rendern; Kontaktbogen und Bewegung prüfen.
3. Neue Effekte nach PixelFX-Authoring-Regeln als Code entwerfen, in mindestens drei Render-/Review-/Refine-Runden verbessern und mit `tools/check.mjs` prüfen.
4. Stil, Zielauflösung und DS-Ressourcen der HeartGold-Arbeitsbasis beachten.
5. Portierung in HeartGold, Codeintegration und In-Game-Test separat nachweisen.

### P3 — QA und Integration

- [ ] HeartGold-spezifisches Asset-/Animationsinventar mit Codepfaden und Quellcommit erstellen.
- [ ] Einen repräsentativen, kleinen Fall vom Codefund bis zum reproduzierbaren Test bearbeiten.
- [ ] Vorher/Nachher-Nachweise, Patch-Basis, bekannte Grenzen und Teststatus dokumentieren.

## Gates

- **Gate A:** Upload-Herkunft, Rechte und Eignung geklärt.
- **Gate B:** HeartGold-Quellbasis, Upstream-Anforderungen und reproduzierbare Baseline geklärt.
- **Gate C:** Effekt/Codeänderung zulässig portiert und separat getestet.

Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen. Keine Rechte oder Dateiformate aus Namen ableiten. Keine Änderungen an fremden Submodules ohne Berechtigung.

## Aktueller Stand

- Zielausrichtung und Unterschiede zu SoulGold dokumentiert.
- Zwei Uploads als ungeprüft priorisiert.
- HeartGold-Submodule vorhanden, aber Build/Codeänderung nicht nachgewiesen.
- PixelFX als Code-Werkzeug eingeordnet, nicht als automatische HeartGold-Integration.
