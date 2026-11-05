# HeartGold Code-Baseline und erste Maßnahmen

## Entscheidung und Abgrenzung

Das frühere SoulGold-Projekt und ein HeartGold-Code-Projekt sind **nicht dasselbe Projekt mit anderem Namen**:

- SoulGold bezieht sich auf eine GBA-Spielmodifikation und deren Visual-QA-/Asset-Ziele.
- HeartGold ist ein Nintendo-DS-Spiel. Das Repository `pret/pokeheartgold` ist eine eigenständige Community-Disassembly/Decompilation. Sein Upstream-README nennt den Stand instabil und Work-in-Progress; die Decompilation ist nicht vollständig und Änderungen an Funktionsgröße oder Datenlayout können Abstürze verursachen.
- PixelFX ist eine JavaScript-Codebibliothek zum Entwerfen und Rendern von Effekten. Sie portiert oder integriert Effekte nicht automatisch in HeartGold.
- SoulGold-Move-Zuordnungen, GBA-Limits, Art-Assets und Anweisungen sind nicht ohne Neuprüfung auf DS übertragbar.

## Bereits verifizierte Repository-Fakten

- Hauptprojekt-Submodule `sources/pokeheartgold` zeigt auf Upstream `pret/pokeheartgold`, gepinnt auf Commit `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`.
- Der Upstream-README verweist für Setup auf `INSTALL.md` und beschreibt die Codebasis als WIP/instabil.
- Die zwei vom Eigentümer priorisierten Uploads sind `Pokemon - HeartGold Version (Europe).zip` und `decoded-20261105072839.bin`. Die ZIP-Commit-Vorschau enthielt eine ROMSFUN-Fehlermeldung statt eines erkennbar gültigen Archivs. Der BIN-Inhalt ist unbekannt. Keine der Dateien ist als zulässige Codebasis bestätigt.
- Hier wurde kein lokaler Dateicheck, Build, Emulatorlauf oder Spieltest durchgeführt.

## Maßnahmen — Reihenfolge

### P0: Uploads sichern und klären

- Dateien nicht erneut hochladen, weitergeben oder unbekannte Binärdaten ausführen.
- Eigentümer klärt Herkunft, Rechte und beabsichtigte Funktion beider Dateien.
- Die ZIP-Vorschau ist bereits ein konkreter Hinweis auf einen fehlgeschlagenen/ungeeigneten Download; ein Ersatz sollte eine rechtmäßig bereitgestellte Quelltext-/Patch-Datei sein, keine kommerzielle ROM.
- Unbekannte `.bin`-Datei nur dann weiter untersuchen, wenn Dateityp, Herkunft und legitimer Zweck nachvollziehbar sind. Keine ROM-Extraktion oder Umgehung von Schutzmaßnahmen als Projektweg.
- In einem lokalen, nicht veröffentlichten Arbeitsverzeichnis Dateityp und Prüfsumme dokumentieren. Keine vollständige kommerzielle Spieldatei ins Repository legen.

### P1: Codebasis reproduzierbar prüfen

- Gepinnte HeartGold-Quelle samt `INSTALL.md`, Build-System, Abhängigkeiten und Nutzungsbedingungen lokal prüfen.
- Prüfen, ob ein Build auf rechtmäßig verfügbaren Eingaben möglich ist; keine ROM oder Schlüssel beschaffen/hochladen, um das Setup zu umgehen.
- Vor jeder Codeänderung eine unveränderte Baseline und den genauen Upstream-Commit protokollieren.
- Wegen WIP-Status kleine Änderungen machen, Funktionen/Datenlayout nicht großflächig verschieben und jede Änderung mit geeigneten Tests absichern.

### P2: Kleine HeartGold-Änderung statt bloßer Umbenennung

Nach erfolgreicher Baseline-Prüfung:

1. Eine klar begrenzte visuelle Code-Stelle aus dem HeartGold-Quellbaum wählen.
2. Quellpfad, Verhalten, Plattform-/DS-Beschränkungen und Testfall dokumentieren.
3. PixelFX-Effekt nur als Referenz/Prototyp in Code erstellen, rendern, Frames prüfen und mindestens drei Iterationen dokumentieren.
4. Erst danach Effekt in einer berechtigten HeartGold-Fork/Arbeitskopie portieren; DS-Darstellung, Performance und Ressourcen prüfen.
5. Patch/Quelländerung plus reproduzierbare Tests dokumentieren; keine ROM-Ausgabe veröffentlichen.

## Akzeptanzkriterien

- [ ] Herkunft/Rechte und Zweck der beiden Uploads dokumentiert oder Uploads als ungeeignet/blockiert eingestuft.
- [ ] Exakter HeartGold-Quellcommit, Lizenz-/Nutzungshinweise und Build-Anforderungen dokumentiert.
- [ ] Baseline-Build nur dann als erfolgreich markiert, wenn tatsächlich ausgeführt und nachgewiesen.
- [ ] Mindestens eine konkrete HeartGold-Codeänderung statt nur Projektumbenennung ausgewählt und geprüft.
- [ ] PixelFX-Prototyp, falls verwendet, getrennt von DS-Portierung und Integration ausgewiesen.
- [ ] Keine kommerzielle ROM oder Spielstände im Git; keine unbelegten Build-/Testbehauptungen.

## Projektstatus

Die Branch-Änderungen in diesem Dokumentationspaket verbessern die Projektabgrenzung und Arbeitsreihenfolge, sind aber **noch keine Codeänderung am Spiel**. Bis die lokale HeartGold-Baseline und ein kleiner, zulässiger Testfall vorhanden sind, ist der eigentliche Neuaufbau blockiert.
