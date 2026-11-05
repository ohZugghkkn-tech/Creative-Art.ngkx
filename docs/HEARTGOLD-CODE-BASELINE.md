# HeartGold Code-Baseline und erste Maßnahmen

## Einordnung

HeartGold ist ein Nintendo-DS-Spiel. `pret/pokeheartgold` ist eine eigenständige Community-Disassembly/Decompilation. Das Upstream-README beschreibt den Stand als instabilen Work-in-Progress; Änderungen an Funktionsgrößen oder Datenlayout können Abstürze verursachen.

PixelFX ist eine JavaScript-Codebibliothek zum Entwerfen und Rendern von Effekten. Sie portiert oder integriert Effekte nicht automatisch in HeartGold. DS-Portierung und Integration sind separate Aufgaben.

## Verifizierte Fakten

- `sources/pokeheartgold` zeigt auf `pret/pokeheartgold`, Commit `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`.
- Der Upstream-README verweist für Setup auf `INSTALL.md` und beschreibt die Codebasis als WIP/instabil.
- Zwei vom Eigentümer priorisierte Uploads: `Pokemon - HeartGold Version (Europe).zip` und `decoded-20261105072839.bin`. Die ZIP-Commit-Vorschau zeigte eine ROMSFUN-Fehlermeldung statt eines erkennbar gültigen Archivs. Der BIN-Inhalt ist unbekannt.
- Kein lokaler Dateicheck, Build, Emulatorlauf oder Spieltest wurde durchgeführt.
- Im aktuellen `main`-Tree sind die früheren visuellen QA-Dateien und das zugehörige Archiv bereits nicht mehr vorhanden. Drei nicht passende Referenz-Gitlinks stehen noch aus.

## Maßnahmen

### P0 — offene Bereinigung und Uploads

- [ ] `sources/pokeemerald`, `sources/pokefirered` und `sources/pokemon-clover` sauber aus dem Git-Tree entfernen und danach `.gitmodules` konsistent bereinigen.
- [ ] Herkunft, Rechte und Zweck der beiden priorisierten Uploads klären.
- [ ] Unbekannte Binärdateien nicht ausführen oder erneut hochladen.
- [ ] Keine vollständige kommerzielle ROM als Ersatz anfordern oder einchecken; zulässige Quelltexte, eigene Assets oder erlaubte Patches verwenden.
- [ ] History-Rewrite nur als separate, ausdrücklich abgestimmte Backup-/Koordinationsmaßnahme erwägen.

### P1 — Codebasis prüfen

- [ ] Gepinnte HeartGold-Quelle samt `INSTALL.md`, Build-System, Abhängigkeiten und Nutzungsbedingungen lokal prüfen.
- [ ] Baseline nur mit rechtmäßigen Voraussetzungen bauen; keine ROM oder Schlüssel beschaffen/hochladen, um Setup-Anforderungen zu umgehen.
- [ ] Vor Codeänderungen unveränderte Baseline und exakten Upstream-Commit protokollieren.
- [ ] Wegen WIP-Status Änderungen klein halten und Tests dokumentieren.

### P2 — erste Codeänderung

Nach erfolgreicher Baseline-Prüfung eine klar begrenzte visuelle Code-Stelle wählen. Quellpfad, Verhalten, Plattformbeschränkungen und Testfall dokumentieren. PixelFX kann als Code-Prototyp dienen; Portierung in HeartGold, DS-Ressourcenprüfung und Spieltest sind separate Schritte.

## Akzeptanzkriterien

- [ ] Überflüssige Referenz-Gitlinks aus dem aktuellen Tree entfernt; Historienbereinigung separat entschieden.
- [ ] Herkunft/Rechte und Zweck der Uploads dokumentiert oder als ungeeignet/blockiert eingestuft.
- [ ] Exakter HeartGold-Quellcommit und Build-Anforderungen dokumentiert.
- [ ] Baseline-Build nur bei tatsächlichem Nachweis als erfolgreich markiert.
- [ ] Mindestens eine konkrete HeartGold-Codeänderung ausgewählt und geprüft.
- [ ] Keine kommerzielle ROM oder Spielstände im Git; keine unbelegten Tests behauptet.
