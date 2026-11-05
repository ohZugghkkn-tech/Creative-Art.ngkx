# Projektstatus und nächste Schritte

**Statusaufnahme:** basierend auf dem aktuellen `main`-Tree, Commit `45b4363f764193beadf9361fc1b829efb0935ea8`. GitHub-Dateibaum und Dokumentation wurden geprüft; keine lokalen Dateien, Builds oder Emulatorl��ufe.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| HeartGold-Ziel | Geplant, kein bloßer Namenswechsel | DS-Codebasis; `pret/pokeheartgold` ist ein separates Upstream-Projekt. |
| HeartGold-Referenz | Gepinntes Submodule vorhanden | `sources/pokeheartgold` @ `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`. Build und Lizenz-/Nutzungsvoraussetzungen lokal offen. |
| PixelFX | Code-/Renderwerkzeug dokumentiert | Kein Nachweis einer HeartGold-Portierung oder Spielintegration. |
| Priorisierte Uploads | Ungeprüft und im aktuellen Tree vorhanden | `Pokemon - HeartGold Version (Europe).zip` und `decoded-20261105072839.bin`; ZIP-Commit-Vorschau enthält Fehlermeldungstext, BIN-Format unbekannt. |
| Früherer visueller QA-Inhalt | Im aktuellen Tree entfernt | Alte Projekt-Checklisten, Inventare und Archiv sind im geprüften Tree nicht vorhanden. Keine Aussage über die Git-Historie. |
| Veraltete Referenz-Gitlinks | Noch vorhanden | `sources/pokeemerald`, `sources/pokefirered`, `sources/pokemon-clover` samt `.gitmodules`-Einträgen sind in `main` noch gelistet; siehe Löschmappe. |
| Build / Codeänderung / Spieltest | Nicht erfolgt/nicht belegt | Bisherige Änderungen sind Dokumentation und Projektpflege. |

## Noch offene Bereinigung im aktuellen Tree

1. Die Gitlinks `sources/pokeemerald`, `sources/pokefirered` und `sources/pokemon-clover` aus dem Repository entfernen.
2. Nach dem Gitlink-Entfernen die entsprechenden Abschnitte aus `.gitmodules` löschen. `sources/pokeheartgold` und `sources/pixelfx` behalten.
3. Frühere projektspezifische Dateien/Archive sind im geprüften `main`-Tree bereits nicht mehr vorhanden; dafür ist keine weitere Tree-Löschung nötig.
4. Zwei HeartGold-Upload-Dateien unangetastet lassen, wie vom Eigentümer festgelegt. Sie sind nicht als valide Arbeitsgrundlage bestätigt.
5. Eine Bereinigung des aktuellen Trees löscht keine älteren Commits. History-Rewrite ist separat und wurde nicht durchgeführt.

## Nächste Schritte

### P0 — sichere Quellen und Bereinigung

- [ ] Manuelle Löschmappe ausführen, um nur die drei unnötigen Gitlinks zu entfernen und `.gitmodules` anschließend konsistent zu aktualisieren.
- [ ] Eigentümer klärt Herkunft, Rechte und Zweck der zwei Uploads. Unbekannte Binärdateien nicht ausführen oder erneut hochladen.
- [ ] ZIP-Vorschau zeigt eine Fehlermeldung; nicht als gültiges Archiv voraussetzen.

### P1 — HeartGold-Codebasis

- [ ] Upstream-Installations-/Build-Anleitung und Nutzungsbedingungen am gepinnten Stand prüfen.
- [ ] Baseline-Build in zulässiger Umgebung ausführen und Ergebnis mit Quellcommit/Umgebung dokumentieren.
- [ ] Danach eine konkrete, kleine HeartGold-Codeänderung auswählen.

### P2 — PixelFX-Prototyp und Portierung

- [ ] Einen passenden Effekt als Code-Prototyp suchen oder erstellen und rendern.
- [ ] PixelFX-Codeprüfung und HeartGold-Portierung getrennt ausweisen.
- [ ] DS-In-Game-Tests nur nach tatsächlicher Ausführung als abgeschlossen markieren.

Keine vollständige ROM oder Spielstände versionieren. Keine Builds, Sichtungen oder Codeänderungen behaupten, solange die Nachweise fehlen.
