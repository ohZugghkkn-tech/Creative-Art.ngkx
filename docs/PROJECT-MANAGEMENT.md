# Projektleitung mit KI-Unterstützung

Dieses Dokument steuert das Repository mit überprüfbaren Prioritäten. Das aktuelle Hauptziel ist der HeartGold-Code-Neuaufbau; die beiden jüngsten Uploads sind die höchste unmittelbare Priorität, aber noch ungeprüfte Eingaben.

## Verantwortlichkeiten

### Projektleitung / KI

- Repository, Dokumentation, offene Aufgaben, Submodule und Commit-Nachweise prüfen.
- Die Prioritäten und Blocker im [Projektstatus](PROJECT-STATUS.md) und [HeartGold-Arbeitsauftrag](HEARTGOLD-CODE-REBUILD.md) nachhalten.
- Textbasierte Dokumentation, Inventare und Skripte auf einem Arbeitsbranch bearbeiten.
- PixelFX als Code-, Render- und Prüfwerkzeug einsetzen; PixelFX-Outputs nicht als fertige HeartGold-Integration darstellen.
- Keine Tests, Builds, ROM-Sichtungen, Videosichtungen oder visuellen Ergebnisse behaupten, die nicht tatsächlich ausgeführt bzw. zugänglich waren.
- Keine vollständigen kommerziellen Spiele, ROMs oder Saves committen; unbekannte Binärdateien nicht ausführen.

### Repository-Eigentümer

Benötigt werden nur Entscheidungen oder Eingaben, die nicht aus Repository-Nachweisen beschafft werden können:

- Herkunft, Rechte und Zweck der zwei priorisierten Uploads;
- Bestätigung der verbindlichen HeartGold-Codebasis, sofern mehrere Quellen/Arbeitsweisen möglich sind;
- lokale Build-/Emulatorläufe, falls dafür eine private Umgebung benötigt wird;
- Freigabe vor riskanten, irreversiblen oder außerhalb des Haupt-Repositories liegenden Änderungen.

## Arbeitsablauf

1. **Sichten:** Dateien, Branch, Submodule, Quellen und Belege kontrollieren.
2. **Abgrenzen:** Ergebnis, Akzeptanzkriterien und Risiken benennen.
3. **Umsetzen:** In einem Arbeitsbranch arbeiten; keine fremden Submodules ohne Berechtigung verändern.
4. **Prüfen:** Verfügbare statische Prüfungen ausführen; nicht verfügbare lokale Prüfungen als offen/blockiert melden.
5. **Dokumentieren:** Änderungen, Teststatus und Nachweise aktualisieren.
6. **Berichten:** Dateien/Branch, Prüfungen, Blocker und nächsten Schritt knapp nennen.

## Prioritäten

- **P0:** Die zwei zuletzt hochgeladenen Dateien lokal und sicher validieren; Herkunft und Rechte klären. Der ZIP-Commit zeigt eine Fehlermeldung, der BIN-Inhalt ist unbekannt.
- **P1:** HeartGold-Referenzcode, Nutzungsbedingungen und reproduzierbaren Build prüfen.
- **P2:** Einen repräsentativen PixelFX-Effekt von Code-Auswahl/Entwurf bis zur HeartGold-Portierung und zum Test nachvollziehbar bearbeiten.
- **P3:** HeartGold-Inventar und visuelle QA anhand konkreter Belege skalieren.
- **P4:** Regression, Patch-Basis, Changelog und Pflege.

## PixelFX-Arbeitsregel

Zuerst vorhandene Module durchsuchen, dann rendern und Frames beurteilen. Neue Effekte nach dem Code-basierten PixelFX-Verfahren entwerfen, iterativ rendern und `tools/check.mjs` nutzen. Für HeartGold sind zusätzlich Portierung, passende Paletten/Pixelraster, GBA-Limits, Code-Integration und Spieltest erforderlich. Eine Vorschau ist kein Nachweis einer Integration.

## Grenzen und Verifikation

GitHub-Zugriff allein führt keine lokalen Shell-Befehle, Builds, Emulator-/Hardwaretests oder Dateiformatprüfung aus. Melde nur tatsächlich belegte Ergebnisse. Vollständige kommerzielle ROMs und Saves bleiben außerhalb des Repositories; Ignore-Regeln entfernen keine bereits versionierten Dateien aus dem Git-Verlauf.

## Statusbericht-Vorlage

- **Phase / Priorität:**
- **Erledigt:**
- **Geänderte Dateien / Branch / Commit:**
- **Prüfungen und Ergebnisse:**
- **Offen oder blockiert:**
- **Benötigt vom Eigentümer:** Nur konkrete, nicht delegierbare Eingabe nennen; andernfalls „nichts“.
- **Nächster Schritt:**
