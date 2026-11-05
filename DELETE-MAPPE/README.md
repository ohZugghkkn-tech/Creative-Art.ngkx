# Löschmappe: Altbestand aus dem früheren Projekt

Diese Datei ist eine **Löschliste für die manuelle Bereinigung**. Die unten aufgeführten Dateien werden hier nicht archiviert oder verschoben. Bitte aus dem Repository entfernen; ein Verschieben in diesen Ordner würde sie weiterhin versionieren.

## Aus dem aktuellen Git-Tree entfernen

Diese SoulGold-Dateien waren im geprüften Tree des HeartGold-Arbeitsbranches vorhanden:

- [ ] `soulgold-v1.2.zip`
- [ ] `docs/SoulGold-1.2-PixelFX-Effekt-Checkliste.md`
- [ ] `docs/TODO-SoulGold-1.3-Visual-QA.md`
- [ ] `docs/soulgold-v1.2-animation-inventory.csv`
- [ ] `docs/soulgold-v1.2-animation-inventory.md`

## Nicht mehr benötigte Referenz-Submodule entfernen

Diese Submodule sind keine HeartGold- oder PixelFX-Arbeitsgrundlage:

- [ ] `sources/pokeemerald`
- [ ] `sources/pokefirered`
- [ ] `sources/pokemon-clover`

Dazu auch die jeweiligen Abschnitte dieser Pfade aus `.gitmodules` entfernen. Behalten werden `sources/pokeheartgold` und `sources/pixelfx`.

Beispiel für einen lokalen Checkout: zuerst die genannten Submodule mit `git submodule deinit -f -- <pfad>` deinitialisieren, anschließend ihre Gitlinks mit `git rm -f -- <pfad>` entfernen, `.gitmodules` bereinigen und alle Änderungen prüfen, bevor du commitest. Keine HeartGold- oder PixelFX-Dateien dabei löschen.

## SoulGold-Verweise aus aktiven Texten entfernen

Wenn wirklich keinerlei Erwähnung des früheren Projekts bleiben soll, entferne die historischen Vergleichssätze und SoulGold-Nennungen aus diesen aktuellen HeartGold-Dokumenten (die Dokumente selbst behalten):

- [ ] `README.md`
- [ ] `docs/HEARTGOLD-CODE-BASELINE.md`
- [ ] `docs/HEARTGOLD-CODE-REBUILD.md`
- [ ] `docs/PROJECT-STATUS.md`
- [ ] `docs/PROJECT-MANAGEMENT.md`

Prüfe auch `.gitignore` und entferne nur alte SoulGold-/Emerald-spezifische Ausnahmen, falls sie nach dem Löschen nicht mehr gebraucht werden. Allgemeine Schutzregeln für ROMs, `.bin`-/`.zip`-Dateien und PixelFX-Vorschauen beibehalten.

## Nicht in dieser Löschliste

Die folgenden zwei vom Eigentümer priorisierten Uploads bleiben unangetastet, bis der Eigentümer selbst entscheidet:

- `Pokemon - HeartGold Version (Europe).zip`
- `decoded-20261105072839.bin`

Sie sind ungeprüft; die ZIP-Commit-Vorschau zeigte eine Fehlermeldung. Nicht ausführen, weitergeben oder erneut hochladen.

## Nicht Teil dieser Löschaktion

- `sources/pokeheartgold` — HeartGold-Code-Referenz behalten.
- `sources/pixelfx` und `.agents/skills/pixelfx/` — PixelFX-Projektwerkzeug behalten.
- Keine Git-Historie umschreiben. Diese Löschmappe beschreibt nur das Entfernen aus dem aktuellen Tree. Vollständiges Löschen aus früheren Commits wäre eine separate, abgestimmte History-Rewrite-Maßnahme mit Backup.
- `Pokemon - Emerald Version (U)(TrashMan).zip` war im geprüften aktuellen Tree nicht vorhanden; daher hier keine aktuelle Löschaktion dafür.

## Nach der Bereinigung prüfen

- [ ] `git status` und `git diff --stat` prüfen.
- [ ] `git ls-files | grep -iE 'soulgold|pokeemerald|pokefirered|pokemon-clover'` liefert keine alten getrackten Dateien/Gitlinks (gegebenenfalls einzelne Suchtreffer im Namen der Löschmappe ausnehmen).
- [ ] `git submodule status` enthält weiterhin `sources/pokeheartgold` und `sources/pixelfx`.
- [ ] HeartGold-Uploads wurden nicht verändert.
- [ ] Bereinigung committen und anschließend bei Bedarf separat über die Git-Historie entscheiden.
