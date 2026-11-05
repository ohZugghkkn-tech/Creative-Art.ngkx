# HeartGold-Code-Neuaufbau — Arbeitsauftrag

**Ziel:** Das Projekt von der bisherigen SoulGold-Ausrichtung auf einen nachvollziehbaren Code-Neuaufbau mit `pret/pokeheartgold` als HeartGold-Referenzbasis ausrichten. Dieser Auftrag ersetzt SoulGold-spezifische Pläne als aktuelle Projektpriorität; bestehende SoulGold-Dokumente bleiben historische Referenzen, bis sie geprüft oder archiviert werden.

## Projektprioritäten

### P0 — Die zwei letzten Uploads klären (höchste unmittelbare Priorität)

Die zwei Dateien des jüngsten Upload-Commits vom 5. November 2026 sind als vom Eigentümer priorisierte Eingaben erfasst:

1. `Pokemon - HeartGold Version (Europe).zip`
2. `decoded-20261105072839.bin`

Bekannte Grenzen aus der GitHub-Commit-Vorschau:

- Für die ZIP-Datei zeigte die Commit-Vorschau den Text `Sorry, your request is invalid. Please visit ROMSFUN.COM - Download FAQ for more details.`. Das ist kein Nachweis eines gültigen ZIP-Archivs oder einer HeartGold-Arbeitsdatei.
- Der Inhalt der `.bin`-Datei ist aus der Commit-Vorschau nicht zuverlässig bestimmbar. Dateiname und Erweiterung belegen weder Format, Herkunft noch Integrität.
- Diese beiden Dateien sind daher **priorisierte, aber ungeprüfte Eingaben**, nicht bestätigte Build-Quellen. Inhalte nicht aus GitHub-Diffs ausgeben oder erneut hochladen.

Nächste Schritte, nur in einer geeigneten lokalen Umgebung:

- [ ] Herkunft und Weitergaberechte jeder Datei vom Eigentümer bestätigen lassen.
- [ ] Format, Dateigröße und Prüfsumme lokal ermitteln; Archive nur isoliert und ohne Ausführung unbekannter Inhalte untersuchen.
- [ ] Prüfen, ob ein gültiges Archiv vorliegt und welche zulässigen Quelldateien es enthält. Keine vollständige kommerzielle ROM in Git übertragen.
- [ ] Die `.bin`-Datei nur mit bekanntem Format/Erzeugungsprozess einordnen; bei unbekanntem Ursprung blockiert lassen.
- [ ] Falls Dateien ungültig oder ungeeignet sind, das Ergebnis dokumentieren und um zulässige Quelltexte/eigene Assets/erlaubte Patches bitten.

### P1 — HeartGold-Codebasis verifizieren

- [ ] Den gepinnten Stand von `sources/pokeheartgold` und dessen Upstream-Lizenz/Build-Anleitung prüfen.
- [ ] Entscheiden und dokumentieren, ob `pret/pokeheartgold` die verbindliche Basis des Neuaufbaus ist.
- [ ] Reproduzierbaren Build mit zulässigen lokalen Eingaben einrichten; ROM, BIOS oder andere kommerzielle Spieldaten nicht committieren.
- [ ] SoulGold-spezifische Annahmen, Move-Inventare und Integrationsschritte nicht ungeprüft auf HeartGold übertragen.

### P2 — PixelFX als Code-Werkzeug einsetzen

PixelFX ist verstanden und wird für Effektentwicklung verwendet, nicht als fertige HeartGold-Implementierung:

1. In `sources/pixelfx` nach passenden Effektmodulen suchen (`node tools/list.mjs <begriff>`), zuerst bestehende Effekte prüfen.
2. Kandidaten rendern und Frames/Kontaktbogen sowie Bewegung beurteilen (`tools/render.mjs`, optional `tools/act.mjs`).
3. Neue Effekte nach den PixelFX-Authoring-Regeln als Code erstellen, in mindestens drei Render-/Review-/Refine-Runden verbessern und mit `tools/check.mjs` prüfen.
4. Ergebnis an HeartGolds native Auflösung, Palette, Tile-/Sprite-Limits und visuellen Stil anpassen.
5. Nur zulässige, dokumentierte Quelländerungen oder Patches in die bestätigte Arbeitsbasis übernehmen. PixelFX-Vorschau allein bedeutet weder Integration noch Test.

### P3 — Inventar, Integration und QA

- [ ] Nach Verifizierung der Arbeitsbasis ein HeartGold-spezifisches Asset-/Animationsinventar mit Quellpfaden und Status erstellen.
- [ ] Repräsentativen Effekt von der Code-Auswahl bis zu Port, Integration und reproduzierbarem Test durchziehen.
- [ ] Tests, Screenshots/Frames und Patch-Basis dokumentieren; Build- und Emulatorergebnisse nur dann als ausgeführt melden, wenn sie tatsächlich vorliegen.

## Schutzregeln und Gates

- Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände hochladen oder committen. Eine Ignore-Regel entfernt keine bereits getrackte Datei oder Git-Historie.
- Keine ungeprüfte Binärdatei ausführen. Unbekannte Archive/Binärdateien lokal und isoliert untersuchen.
- Keine Rechte oder Dateiformate aus Namen ableiten. Unklarheiten als **BLOCKIERT** dokumentieren.
- Keine Änderungen an fremden Submodules ohne Berechtigung und abgestimmte beschreibbare Kopie.
- **Gate A:** Upload-Herkunft, Format und Eignung geklärt.
- **Gate B:** HeartGold-Quellbasis und Build-Verfahren geklärt.
- **Gate C:** Effekt in Zielauflösung geprüft und nachvollziehbar integriert; passende Regression dokumentiert.

## Aktueller Stand

- Projektziel festgelegt: HeartGold-Code-Neuaufbau statt SoulGold-1.3-Visual-QA als Hauptziel.
- Die zwei jüngsten Uploads als höchste unmittelbare Priorität erfasst, aber beide ungeprüft.
- `sources/pokeheartgold` ist als gepinnte Referenz vorhanden; es gibt hier keinen Nachweis eines erfolgreichen Builds oder einer Integration.
- PixelFX ist als Code-/Render-/Qualitätswerkzeug eingeordnet; keine HeartGold-Integration oder visuelle Prüfung wird behauptet.
