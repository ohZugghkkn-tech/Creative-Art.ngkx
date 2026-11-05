# Dokumentation

Dieser Ordner enthält Planung, Projektsteuerung und Nachweise für das Creative-Art.ngkx-Projekt. Der Projektstatus unterscheidet belegte Ergebnisse von noch offenen Aufgaben; Checklisten sind kein Nachweis, dass eine Sichtung oder Integration bereits stattgefunden hat.

## Projektsteuerung

- [Projektstatus und priorisierte nächste Schritte](PROJECT-STATUS.md)
- [KI-gestützte Projektleitung: Rollen und Arbeitsablauf](PROJECT-MANAGEMENT.md)

## QA- und Referenzdokumente

- [SoulGold 1.3 Visual-QA-Arbeitsauftrag](TODO-SoulGold-1.3-Visual-QA.md) — ausführlicher Ablauf und Abnahmekriterien.
- [SoulGold 1.2 PixelFX-Effekt-Checkliste](SoulGold-1.2-PixelFX-Effekt-Checkliste.md) — Effektfamilien und Prüfpunkte.
- [SoulGold v1.2 Move-Inventar und Schema](soulgold-v1.2-animation-inventory.md) — erklärt Statusfelder und Datenbasis.
- [CSV-Inventar](soulgold-v1.2-animation-inventory.csv) — derzeit nur Kopfzeile; 0/935 Moves eingetragen.

## Wo neue Nachweise hingehören

- Move-Zuordnungen und Abdeckungszahlen: strukturierte Inventardatei in `docs/`, mit Version/Commit im Dateikopf oder Begleitdokument.
- Visuelle Befunde: Issue oder QA-Eintrag mit Move-/Asset-ID, Versionsbezug, reproduzierbarem Testfall und zulässigem Screenshot/Frame.
- Builds und Regression: Testprotokoll mit Quellstand, Befehl, Umgebung und Ergebnis.
- Entscheidungen und Änderungen: Changelog/PR-Beschreibung mit Verweisen auf die zugehörigen QA-Einträge.

Keine Datei als geprüft oder getestet markieren, solange der zugehörige Nachweis nicht vorliegt. Keine vollständigen ROMs oder Spielstände als Prüfnachweis ablegen.
