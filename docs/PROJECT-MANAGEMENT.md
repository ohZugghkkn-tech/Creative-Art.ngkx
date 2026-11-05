# Projektleitung mit KI-Unterstützung

Dieses Dokument legt fest, wie das Projekt in GitHub mit möglichst wenig organisatorischem Aufwand für den Repository-Eigentümer gesteuert wird.

## Verantwortlichkeiten

### Projektleitung / KI

- Repository, Dokumentation, offene Aufgaben und Änderungen anhand verfügbarer GitHub-Inhalte prüfen.
- Arbeit in kleine, priorisierte und überprüfbare Pakete teilen.
- Fortschritt, Abhängigkeiten, Risiken und Blocker in Statusdokumentation und Issues nachhalten.
- Dokumentation, Inventare, Checklisten, Skripte und andere textbasierte Projektdateien direkt auf einem Arbeitsbranch bearbeiten.
- Änderungen vor dem Commit auf Konsistenz mit Ziel, Quellenlage und vereinbarten Schutzregeln prüfen.
- Keine Tests, Builds, ROM-Sichtungen, Videosichtungen oder visuellen Ergebnisse behaupten, die tatsächlich nicht ausgeführt bzw. zugänglich waren.
- Nach Arbeit den Branch, Commit und die noch nötigen Entscheidungen/Inputs knapp berichten.

### Repository-Eigentümer

Der Eigentümer muss keine Aufgaben selbst zerlegen oder regelmäßig Projektstatusberichte schreiben. Benötigt werden nur Dinge, die die KI ohne Zugriff nicht beschaffen oder sicher entscheiden kann, zum Beispiel:

- nötige Quelldateien, eigene Assets oder ausdrücklich freigegebene Uploads;
- eine Entscheidung, wenn mehrere legitime Projektziele oder Rechtefragen bestehen;
- ein lokaler Testlauf, wenn dafür nur die eigene ROM, Hardware, Emulatorumgebung oder ein nicht zugänglicher Build benötigt wird;
- Freigabe, bevor eine riskante oder nicht umkehrbare Änderung vorgenommen wird.

## Arbeitsablauf pro Aufgabe

1. **Sichten:** Relevante Repository-Dateien, aktuelle Branches, Issues, Submodule und vorhandene Belege prüfen.
2. **Abgrenzen:** Ergebnis und Akzeptanzkriterien festhalten; Abhängigkeiten und Risiken benennen.
3. **Umsetzen:** Änderungen auf einem Arbeitsbranch durchführen. Keine Änderungen an geschützten/veröffentlichten Spieldaten oder fremden Submodules ohne klare Berechtigung und Ziel.
4. **Prüfen:** Verfügbare statische Prüfungen ausführen. Nicht ausführbare Prüfungen als offen oder blockiert markieren.
5. **Dokumentieren:** Geänderte Dateien, Teststatus, Nachweise und nächste Schritte aktualisieren.
6. **Berichten:** Kurz zusammenfassen, was fertig ist, was offen ist und ob nur eine konkrete Entscheidung oder Datei des Eigentümers benötigt wird.

## Prioritäten

- **P0 – Sicherheit und Arbeitsgrundlage:** Rechte, Herkunft, versehentlich versionierte Spieldaten, reproduzierbarer Quellstand.
- **P1 – Messbarkeit:** Inventare, Statusschema, Nachweisstruktur und reproduzierbare Testanleitung.
- **P2 – Repräsentativer Durchlauf:** Einen kleinen Fall vollständig von Zuordnung bis Testprotokoll bearbeiten.
- **P3 – Skalierung:** Restliche Moves und Assets anhand belegter Prioritäten prüfen und verbessern.
- **P4 – Abnahme und Pflege:** Regression, Changelog, Patch-Basis und Dokumentation.

## Grenzen und Verifikation

GitHub-Dateien und Text können direkt ausgewertet und geändert werden. Eine GitHub-Verbindung führt jedoch nicht automatisch lokale Shell-Befehle, einen GBA-Build, Emulator-/Hardwaretests oder eine vollständige Video-/ROM-Sichtung aus. Dafür müssen zugängliche Testdaten, Ausgaben, Screenshots/Frames oder ein lokaler Test durch den Eigentümer bereitgestellt werden. Jede solche Grenze wird als konkreter Blocker dokumentiert, nicht als erledigtes Ergebnis dargestellt.

## Statusbericht-Vorlage

- **Phase / Priorität:**
- **Erledigt:**
- **Geänderte Dateien / Branch / Commit:**
- **Prüfungen und Ergebnisse:**
- **Offen oder blockiert:**
- **Benötigt vom Eigentümer:** Nur konkrete, nicht delegierbare Eingabe nennen; andernfalls „nichts“.
- **Nächster Schritt:**
