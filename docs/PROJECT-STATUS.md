# Projektstatus und nächste Schritte

**Statusaufnahme:** 5. November 2026. Diese Datei beschreibt, was sich aus den versionierten Repository-Dateien und den geprüften GitHub-Quellreferenzen belegen lässt; sie behauptet keine lokale Prüfung von ROMs, Videos, Builds oder Grafiken. Projektsteuerung und Zuständigkeiten sind unter [KI-gestützte Projektleitung](PROJECT-MANAGEMENT.md) festgelegt.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| Projektziel und QA-Plan | Dokumentiert | `docs/TODO-SoulGold-1.3-Visual-QA.md` beschreibt Phasen und Abnahmekriterien. |
| Projektsteuerung | Eingerichtet | `docs/PROJECT-MANAGEMENT.md` legt KI-/Eigentümerrollen, Prioritäten und Berichtsformat fest. |
| PixelFX-Effekt-Checkliste | Angelegt, Prüfstatus offen | `docs/SoulGold-1.2-PixelFX-Effekt-Checkliste.md`; die Einträge sind als ungeprüft markiert. |
| Referenz-Submodule | Eingerichtet | `sources/` und `.gitmodules`; Submodule auf gepinnte Commits. |
| SoulGold v1.2 Quellreferenz | Remote-Verweis verifiziert; Arbeitskopie fehlt | `Eemeliri/soulgold` existiert. Remote-Datei `data/battle_anim_scripts.s` ist unter Tag `v1.2` vorhanden; der dokumentierte Commit ist `b7d1534e3d120da9df0b03b685a91b655cf87cad`. Keine lokale Build-/Dateiprüfung behauptet. |
| 935-Move-Inventar | Schema angelegt, 0/935 Einträge | `docs/soulgold-v1.2-animation-inventory.csv` enthält nur den Header; noch keine zulässige externe Move-Liste importiert und keine Zeilen abgeglichen. |
| Visuelle Prüfung / Vorher-Nachher | Nicht belegt | Keine dokumentierten Sichtungsnachweise oder bestätigten visuellen Befunde in den geprüften Projektunterlagen. |
| Build und GBA-Regression | Nicht belegt | Werkzeuge, reproduzierbarer Build-Ablauf und tatsächliche Testresultate müssen ermittelt werden. |
| Archive im Repository | P0 – ungeprüft und bereits versioniert | Der Git-Tree enthält `Pokemon - Emerald Version (U)(TrashMan).zip` und `soulgold-v1.2.zip`. Ihre Inhalte, Herkunft und Rechte sind nicht durch Dateinamen bestätigt. `.gitignore` entfernt getrackte Dateien nicht. Keine Archive öffnen/weitergeben oder neue Spieldaten hochladen, bevor Herkunft und Rechte geklärt sind. |
| QA-Issue-Formular | Syntax korrigiert | `.github/ISSUE_TEMPLATE/visual-qa.yml` hatte eine fehlerhaft eingerückte Beschreibung; die Struktur wurde berichtigt. YAML-/GitHub-Validierung wurde hier nicht ausgeführt. |

## Blocker und Risiken

1. **P0 – Archive/Rechte:** ZIPs liegen bereits im Git-Verlauf. Ohne lokale Inhalte und Herkunft lässt sich nicht feststellen, was sie enthalten oder ob sie rechtmäßig weitergegeben werden dürfen. Ich habe sie nicht heruntergeladen, extrahiert, gelöscht oder inhaltlich bewertet. Eine Ignore-Regel verhindert nur neue, nicht bereits getrackte Dateien.
2. **P0 – Nutzbare Arbeitsquelle:** Der öffentliche SoulGold-Tag und der relevante Animationsdateipfad sind auf GitHub auffindbar. Das ist noch keine lokale, baubare Arbeitskopie und keine Verifikation der ROM-/Patch-Version.
3. **P1 – Move-Daten:** Ein leeres Inventarschema ist eingecheckt. Die externe 935-Move-Liste und ihre Lizenz/Exportierbarkeit sind noch nicht maschinell bestätigt; daher keine vorgetäuschten Zeilen.
4. **P1 – Testwerkzeuge:** Build-Befehle, Asset-Konvertierung und Emulator-/Hardwaretest müssen aus tatsächlichen Quellen oder bereitgestellten Testprotokollen ermittelt werden.
5. **Visuelle Nachweise:** Jede Bewertung braucht einen konkreten Quellpfad, Testfall oder zulässigen Screenshot/Frame mit Versionsbezug.

## Arbeit erledigt

- Repository-Einstieg, Beitragsregeln, Asset-Hinweise und Projektmanagement dokumentiert.
- SoulGold v1.2 GitHub-Repository und `data/battle_anim_scripts.s` am geplanten Tag geprüft; der im Projektplan angegebene Commit wurde im Commit-Lookup bestätigt.
- Move-Inventar-Zielschema angelegt, ohne unbelegte Einträge einzutragen.
- Git-Tree geprüft: ZIP-Dateien sind tatsächlich versioniert; Ignore-Regeln gelten nicht rückwirkend.
- Fehlerhafte Einrückung im Visual-QA-Issue-Formular behoben.

## Nächste Schritte

### P0 — Arbeitsgrundlage absichern

- [ ] Herkunft und Weitergaberechte für die bereits getrackten ZIP-Dateien klären; nicht über GitHub-Inhalte spekulieren.
- [ ] Die in den ZIP-Dateien enthaltenen Daten nicht erneut hochladen. Für Arbeit bevorzugt zulässige Quelltexte, eigene Assets und erlaubte Patches verwenden.
- [ ] Einen SoulGold-Quellstand als Submodule/Fork oder getrennte lokale Arbeitskopie nur dann einrichten, wenn die gewählte Quelle und Nutzungsbedingungen geklärt sind.
- [ ] Build-, Konvertierungs- und Testwerkzeuge anhand der SoulGold-Dokumentation erfassen.

### P1 — Inventar mit belastbarer Datenquelle füllen

- [ ] Eine zulässige 935-Move-Datenquelle und Exportmethode bestimmen.
- [ ] Quellcode parsergestützt aus dem gepinnten Tag auswerten, statt Skriptzuordnungen zu erraten.
- [ ] Alle Moves einzeln zuordnen oder explizit als ungeklärt markieren; Abdeckungszahlen erzeugen.
- [ ] Danach Asset-/Animationsinventar und Prüfbelege ergänzen.

### P2 — Repräsentativer QA-Durchlauf

- [ ] Einen Move auswählen, dessen Animation im Quellcode eindeutig zugeordnet ist.
- [ ] Sichtung mit reproduzierbarer Spielversion und zulässigem Nachweis durchführen.
- [ ] PixelFX-Effekt nur bei belegtem Verbesserungsbedarf prototypisieren.
- [ ] Integration und GBA-Regression nur in zulässiger Arbeitsquelle testen.

**Gate:** Keine Integration in Spieldaten, bis Arbeitsbasis und Nutzungsrechte geklärt sind.

## Statusdefinitionen

- **Offen:** Noch nicht bearbeitet oder belegt.
- **In Arbeit:** Bearbeitung läuft, Abnahmekriterien sind nicht erfüllt.
- **Blockiert:** Konkrete Voraussetzung fehlt; diese ist im Eintrag zu benennen.
- **Geprüft:** Prüfung mit Version und reproduzierbarem Nachweis abgeschlossen.
- **Integriert:** Änderung liegt in der freigegebenen Quellbasis; Integration allein bedeutet nicht getestet.
- **Getestet:** Benannte Tests wurden mit dokumentiertem Ergebnis durchgeführt.

## Benötigt vom Eigentümer

Der nächste unvermeidbare Input betrifft ausschließlich die schon vorhandenen Archive: Bitte bestätige deren Herkunft und ob sie zu deiner rechtmäßigen privaten Arbeitsgrundlage gehören. Lade keine ROMs oder Spielstände erneut hoch. Falls du die Quellen nicht teilen darfst, reicht diese Info; dann bleibt die Arbeit auf öffentlichem Quellcode, zulässigen Patches und Dokumentation.
