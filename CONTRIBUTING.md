# Mitwirken

## Vor Änderungen

1. Arbeite auf einem eigenen Branch und prüfe `git status` vor und nach der Arbeit.
2. Prüfe zuerst, welche Quelldateien und Submodule tatsächlich vorhanden sind. Beschreibe keinen Build, Emulatorlauf oder Sichtung als ausgeführt, wenn es dafür keinen Nachweis gibt.
3. Verwende für Änderungen an externen Submodules nur einen eigenen Fork oder eine beschreibbare Kopie. Änderungen innerhalb eines Submodules sind nicht automatisch Änderungen dieses Haupt-Repositories.
4. Beachte Lizenz- und Herkunftshinweise der jeweiligen Quelle und jedes Assets.

## Dateien richtig ablegen

- Projektablauf, Entscheidungen und QA-Nachweise gehören unter `docs/`.
- Eigene, freigegebene Grafik-Quellen und abgeleitete Arbeitsdateien können unter `assets/` einsortiert werden; ergänze Herkunft, Lizenz, Quelle und verwendete Version.
- Externe Projekte bleiben unter `sources/` als gepinnte Git-Submodule. Große Upstream-Projekte nicht als zusätzliche Kopie ins Haupt-Repository importieren.
- Generierte PixelFX-Vorschauen bleiben im vorgesehenen `records/`-Ordner des Submodules und werden nicht als fertige Spielintegration ausgegeben.
- Nutze sprechende Dateinamen und verknüpfe Dateien aus dem Dokumentationsindex.

## Keine ROMs oder Spielstände

Keine vollständigen kommerziellen Spiele, ROMs oder Spielstände committieren oder hochladen. Eine `.gitignore`-Regel ist nur eine Vorsichtsmaßnahme und entfernt keine bereits versionierte Datei. Falls eine Datei unklarer Herkunft oder Berechtigung schon getrackt ist, stoppe die Weitergabe und kläre vor einer Änderung den zulässigen Umgang damit. Zulässige Patches und eigene Quellen müssen ihre Basisversion und Nutzungsbedingungen dokumentieren.

## QA- und Issue-Nachweise

Für einen visuellen Befund mindestens angeben:

- betroffene Move-, Animations- oder Asset-ID;
- exakte Spiel-/Quellversion und Commit, soweit bekannt;
- reproduzierbare Schritte und sichtbares Ergebnis;
- konkreter Mangel oder begründete Entscheidung, nichts zu ändern;
- Teststatus, Blocker und nächster Schritt.

„Sieht unfertig aus“ allein ist kein prüfbarer Befund. Nutze das Issue-Formular **Visuelle QA**, wenn ein neuer Befund nachverfolgt werden soll.
