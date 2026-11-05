# Löschmappe: noch offene Bereinigung im aktuellen Main-Tree

Diese Mappe ist eine To-do-Liste, kein Archiv. Die darin genannten Pfade werden nicht hierher verschoben. Stand geprüft anhand `main` bei Commit `45b4363f764193beadf9361fc1b829efb0935ea8`.

## Bereits aus dem aktuellen Tree verschwunden

Die folgenden früheren Projektdateien sind im geprüften Tree nicht mehr vorhanden; dafür ist keine weitere Dateilöschung erforderlich:

- `soulgold-v1.2.zip`
- `docs/SoulGold-1.2-PixelFX-Effekt-Checkliste.md`
- `docs/TODO-SoulGold-1.3-Visual-QA.md`
- `docs/soulgold-v1.2-animation-inventory.csv`
- `docs/soulgold-v1.2-animation-inventory.md`

Das sagt nichts über ältere Commits aus.

## Noch zu entfernen: unnötige Submodule

Im aktuellen Tree sind diese Gitlinks und `.gitmodules`-Einträge weiterhin vorhanden. Sie sind für das HeartGold-/PixelFX-Ziel nicht nötig:

- [ ] `sources/pokeemerald`
- [ ] `sources/pokefirered`
- [ ] `sources/pokemon-clover`

Sauber aus dem lokalen Clone deinitialisieren und per Git entfernen; danach die drei passenden Abschnitte aus `.gitmodules` löschen und Änderungen prüfen. Behalten:

- `sources/pokeheartgold`
- `sources/pixelfx`

Beispielablauf in einem lokalen Clone, Pfade sorgfältig prüfen:

```sh
git submodule deinit -f -- sources/pokeemerald sources/pokefirered sources/pokemon-clover
git rm -f -- sources/pokeemerald sources/pokefirered sources/pokemon-clover
# Danach die drei entsprechenden Abschnitte in .gitmodules entfernen
git status --short
git diff -- .gitmodules
git diff --cached --stat
```

Nicht committen, bevor im Diff ausschließlich die beabsichtigten Gitlink-Entfernungen und `.gitmodules`-Änderung stehen.

## Beibehalten

Die zwei vom Eigentümer priorisierten Dateien nicht löschen oder verändern:

- `Pokemon - HeartGold Version (Europe).zip` — Commit-Vorschau zeigte Fehlermeldungstext statt eines belegten gültigen Archivs.
- `decoded-20261105072839.bin` — Format und Herkunft unbekannt.

Beide Dateien sind ungeprüft. Nicht ausführen, weitergeben oder erneut hochladen. Keine vollständige kommerzielle ROM in Git speichern.

Auch behalten:

- `sources/pokeheartgold` — HeartGold-Referenz.
- `sources/pixelfx` und `.agents/skills/pixelfx/` — PixelFX-Codewerkzeug.

## Git-Historie

Diese Bereinigung betrifft nur den aktuellen Tree. Frühere Commits bleiben bestehen. History-Rewrite wurde nicht angefordert oder durchgeführt; es wäre ein separates Vorhaben mit Backup und Koordination aller Klone.

## Abschlusskontrolle

- [ ] Frühere projektspezifische Dateien sind im aktuellen Tree nicht vorhanden.
- [ ] Die drei unnötigen Referenz-Gitlinks sind entfernt und nicht mehr in `.gitmodules` eingetragen.
- [ ] `sources/pokeheartgold` und `sources/pixelfx` bleiben vorhanden.
- [ ] Beide priorisierten Uploads sind unverändert.
- [ ] `git status`, `git diff --cached --stat` und `.gitmodules` geprüft.
