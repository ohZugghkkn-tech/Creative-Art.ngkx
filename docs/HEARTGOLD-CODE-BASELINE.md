# HeartGold Code-Baseline und erste Maßnahmen

## Entscheidung und Abgrenzung

Das frühere Projekt und ein HeartGold-Code-Projekt sind **nicht dasselbe Projekt mit anderem Namen**:

- HeartGold ist ein Nintendo-DS-Spiel; `pret/pokeheartgold` ist eine eigenständige Community-Disassembly/Decompilation.
- Das Upstream-README nennt den Stand instabil und Work-in-Progress; die Decompilation ist nicht vollständig, Änderungen an Funktionsgrößen oder Datenlayout können Abstürze verursachen.
- PixelFX ist eine JavaScript-Codebibliothek zum Entwerfen und Rendern von Effekten. Sie portiert oder integriert Effekte nicht automatisch in HeartGold.
- Vorhandene frühere Spielgrafiken, Move-Zuordnungen und Plattformannahmen sind nicht ohne Neuprüfung übertragbar.

## Verifizierte Fakten

- `sources/pokeheartgold` zeigt auf `pret/pokeheartgold`, Commit `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`.
- Der Upstream-README verweist für Setup auf `INSTALL.md` und beschreibt die Codebasis als WIP/instabil.
- Die zwei priorisierten Uploads heißen `Pokemon - HeartGold Version (Europe).zip` und `decoded-20261105072839.bin`. Die ZIP-Commit-Vorschau zeigte eine ROMSFUN-Fehlermeldung statt eines erkennbar gültigen Archivs. Der BIN-Inhalt ist unbekannt.
- Kein lokaler Dateicheck, Build, Emulatorlauf oder Spieltest wurde durchgeführt.

## Maßnahmen — Reihenfolge

### P0: Altbestand und Uploads

- [ ] Aus dem aktuellen Tree die nicht mehr benötigten früheren Projektdateien, Archive und Referenz-Gitlinks entfernen.
- [ ] Herkunft, Rechte und Zweck beider priorisierter Uploads klären.
- [ ] Unbekannte Binärdateien nicht ausführen oder erneut hochladen.
- [ ] Keine vollständige kommerzielle ROM als Ersatz anfordern oder ins Repository einchecken; zulässige Quelltexte, eigene Assets oder erlaubte Patches verwenden.
- [ ] Falls vollständige Historienbereinigung gewünscht ist: gesondertes Backup, abgestimmtes Umschreiben der Git-Historie und anschließende Koordination mit Klonen.

### P1: Codebasis reproduzierbar prüfen

- [ ] Gepinnte HeartGold-Quelle samt `INSTALL.md`, Build-System, Abhängigkeiten und Nutzungsbedingungen lokal prüfen.
- [ ] Baseline nur mit rechtmäßigen Voraussetzungen bauen; keine ROM oder Schlüssel beschaffen/hochladen, um Setup-Anforderungen zu umgehen.
- [ ] Vor Codeänderungen unveränderte Baseline und exakten Upstream-Commit protokollieren.
- [ ] Wegen WIP-Status Änderungen klein halten und Tests dokumentieren.

### P2: Kleine HeartGold-Änderung

Nach erfolgreicher Baseline-Prüfung eine klar begrenzte visuelle Code-Stelle wählen, ihr Verhalten und Testfall dokumentieren und gegebenenfalls PixelFX als Code-Prototyp mit Iterationen verwenden. Erst danach in einer berechtigten HeartGold-Arbeitskopie portieren, DS-Ressourcen prüfen und Integration/Tests getrennt nachweisen.

## Akzeptanzkriterien

- [ ] Nicht mehr benötigte frühere Projektdateien aus dem aktuellen Tree entfernt; Historienbereinigung separat entschieden.
- [ ] Herkunft/Rechte und Zweck der Uploads dokumentiert oder als ungeeignet/blockiert eingestuft.
- [ ] Exakter HeartGold-Quellcommit und Build-Anforderungen dokumentiert.
- [ ] Baseline-Build nur bei tatsächlichem Nachweis als erfolgreich markiert.
- [ ] Mindestens eine konkrete HeartGold-Codeänderung ausgewählt und geprüft.
- [ ] Keine kommerzielle ROM oder Spielstände im Git; keine unbelegten Tests behauptet.

## Projektstatus

Dokumentationsänderungen sind keine Spielcodeänderung. Der eigentliche Neuaufbau ist blockiert, bis Altbestand bereinigt, Arbeitsbasis geklärt und ein reproduzierbarer Testfall vorhanden ist.
