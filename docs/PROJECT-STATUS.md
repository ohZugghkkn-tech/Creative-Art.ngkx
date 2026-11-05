# Projektstatus und nächste Schritte

**Statusaufnahme:** 5. November 2026. Diese Datei beschreibt, was sich aus den versionierten Repository-Dateien belegen lässt; sie behauptet keine lokale Prüfung von ROMs, Videos, Builds oder Grafiken. Projektsteuerung und Zuständigkeiten sind unter [KI-gestützte Projektleitung](PROJECT-MANAGEMENT.md) festgelegt.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| Projektziel und QA-Plan | Dokumentiert | `docs/TODO-SoulGold-1.3-Visual-QA.md` beschreibt Phasen und Abnahmekriterien. |
| Projektsteuerung | Eingerichtet | `docs/PROJECT-MANAGEMENT.md` legt KI-/Eigentümerrollen, Prioritäten und Berichtsformat fest. |
| PixelFX-Effekt-Checkliste | Angelegt, Prüfstatus offen | `docs/SoulGold-1.2-PixelFX-Effekt-Checkliste.md`; die Einträge sind als ungeprüft markiert. |
| Referenz-Submodule | Eingerichtet | `sources/` und `.gitmodules`; Submodule auf gepinnte Commits. |
| SoulGold v1.2 Arbeitsquelle | Nicht als Submodule eingerichtet | Der im QA-Plan genannte Quellstand ist nicht in `.gitmodules` aufgeführt. Verfügbarkeit und Prüfsumme sind noch zu verifizieren. |
| 935-Move-Inventar | Nicht vorhanden | Noch keine strukturierte, pro Move belegte Zuordnung und Statusdatei im Repository. |
| Visuelle Prüfung / Vorher-Nachher | Nicht belegt | Keine dokumentierten Sichtungsnachweise oder bestätigten visuellen Befunde in den geprüften Projektunterlagen. |
| Build und GBA-Regression | Nicht belegt | Werkzeuge, reproduzierbarer Build-Ablauf und tatsächliche Testresultate müssen ermittelt werden. |
| Archive im Repository | Prüfung erforderlich | Im Repository liegen ZIP-Dateien. Ihre Inhalte, Herkunft, Rechte und Eignung als Arbeitsgrundlage sind durch Dateinamen allein nicht bestätigt. |

## Blocker vor der Umsetzung

1. **Arbeitsbasis:** SoulGold-Version, zulässige Quelle und exakter Commit müssen überprüfbar feststehen. Dateiname oder externe Move-Seite allein reichen nicht.
2. **Datei- und Rechteprüfung:** Die bereits versionierten Archive müssen separat geprüft werden. Keine ROMs oder Spielstände veröffentlichen oder weiter hochladen; nur eigene bzw. zur Weitergabe freigegebene Quelldateien, Grafiken oder Patches verwenden.
3. **Werkzeugkette:** Build-Befehle, Asset-Konvertierung, Emulator-/Hardwaretest und benötigte Versionen dokumentieren, bevor ein Integrationsziel zugesagt wird.
4. **Prüfbelege:** Jede visuelle Bewertung braucht einen konkreten Quellpfad, Testfall oder zulässigen Screenshot/Frame mit Versionsbezug.

## Empfohlene Reihenfolge

### Phase 0 — Repository und Arbeitsgrundlage absichern

- [ ] ZIP-Inhalte und Herkunft lokal prüfen; keine ungeklärten Spieldaten ins Repository übernehmen.
- [ ] Prüfen, ob ROM-/Save-Dateien bereits getrackt sind und Rechte/Weitergabe geklärt sind.
- [ ] SoulGold v1.2 Quelle und Commit aus dem QA-Plan unabhängig verifizieren.
- [ ] Ignore-Regeln, Submodule und Arbeits-Branch prüfen; Basiszustand dokumentieren.
- [ ] Build-, Konvertierungs- und Testwerkzeuge erfassen oder konkrete Blocker notieren.

**Gate:** Keine Integration beginnen, solange eine bearbeitbare, zulässige und reproduzierbar bezeichnete Arbeitsbasis fehlt.

### Phase 1 — Inventar anlegen

- [ ] Strukturierte Inventardatei für alle 935 vereinbarten Move-Einträge anlegen.
- [ ] Quelle und Animationszuordnung für jeden Eintrag gegen den bestätigten SoulGold-Quellstand prüfen.
- [ ] Nicht-Move-Animationen und statische Asset-Gruppen erfassen.
- [ ] Abdeckungszahlen und Statuswerte dokumentieren; ungeklärte Einträge nicht als erledigt markieren.

### Phase 2 — Kleine Referenzprüfung

- [ ] Einen repräsentativen, reproduzierbaren Testfall auswählen.
- [ ] Bestehende Animation bei nativer GBA-Größe mit Versions- und Quellenbeleg bewerten.
- [ ] Nur bei belegtem Verbesserungsbedarf einen PixelFX-Prototyp erstellen.
- [ ] Prototyp samt Kontaktbogen/Frame-Nachweis, Iterationen und Entscheidung dokumentieren.

### Phase 3 — Priorisieren, integrieren und regressionsprüfen

- [ ] Umfang anhand Häufigkeit, Sichtbarkeit, Aufwand und Wiederverwendbarkeit priorisieren.
- [ ] Konvertierung und Einbindung nur in freigegebener Quelle durchführen.
- [ ] Build und relevante Einzel-/Doppel-/Mehrziel-Fälle reproduzierbar testen.
- [ ] Patch, Changelog, Testnachweise und bekannte Grenzen dokumentieren; keine vollständige ROM einchecken.

## Statusdefinitionen

- **Offen:** Noch nicht bearbeitet oder belegt.
- **In Arbeit:** Bearbeitung läuft, Abnahmekriterien sind nicht erfüllt.
- **Blockiert:** Konkrete Voraussetzung fehlt; diese ist im Eintrag zu benennen.
- **Geprüft:** Prüfung mit Version und reproduzierbarem Nachweis abgeschlossen.
- **Integriert:** Änderung liegt in der freigegebenen Quellbasis; Integration allein bedeutet nicht getestet.
- **Getestet:** Benannte Tests wurden mit dokumentiertem Ergebnis durchgeführt.

## Nächster konkreter Schritt

Zuerst die ZIP-Dateien und die SoulGold-Arbeitsbasis klären. Der Projektleiter übernimmt die Zerlegung und Dokumentation; vom Eigentümer wird nur Input benötigt, der nicht aus Repository/zugänglichen Quellen ermittelt werden kann. Danach Gate 0 mit belegbaren Fakten abschließen und ein kleines visuelles QA-Beispiel vollständig durch Inventar, Bewertung, Prototyp-Entscheidung und Testnachweis führen.
