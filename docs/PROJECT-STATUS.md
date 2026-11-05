# Projektstatus und nächste Schritte

**Statusaufnahme:** 5. November 2026. Nur GitHub-Metadaten, Commit-Vorschau und Dokumentation wurden geprüft; keine lokalen Dateien oder Builds wurden ausgeführt.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| Ziel | HeartGold-Code-Arbeitsbasis geplant | Nintendo-DS-Codebasis; nicht bloß eine Umbenennung. |
| HeartGold-Referenz | Gepinntes Submodule vorhanden | `sources/pokeheartgold` → `pret/pokeheartgold` @ `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`; Upstream kennzeichnet Stand als instabilen WIP. |
| Zwei priorisierte Uploads | Ungeprüft | ZIP-Commit-Vorschau zeigt Fehlermeldungstext; `.bin`-Format und Zweck unbekannt. |
| PixelFX | Code-/Renderwerkzeug dokumentiert | Keine HeartGold-Portierung oder In-Game-Integration nachgewiesen. |
| Codeänderungen / Build / Test | Nicht erfolgt/nicht belegt | Bisherige Änderungen waren Dokumentation. |
| Altbestand-Bereinigung | Noch nicht vollständig | GitHub-Schreibwerkzeuge in dieser Sitzung können Dateien aktualisieren/hinzufügen, aber keine bestehenden Dateien oder Gitlinks löschen. Die unten aufgeführten Altdateien sind daher weiterhin im Repository. |

## Verbleibender Altbestand, der gelöscht werden muss

Folgende bisherige Dateien bzw. Quellen sind nicht Teil des aktuellen Ziels und bleiben trotz Bereinigungsversuchen versioniert:

- `Pokemon - HeartGold Version (Europe).zip` — Commit-Vorschau war eine Fehlermeldung, kein bestätigtes Archiv.
- `decoded-20261105072839.bin` — unbekanntes Format und unbekannte Herkunft.
- `soulgold-v1.2.zip` und die SoulGold-spezifischen Dateien unter `docs/`.
- Unverbundene frühere Referenz-Gitlinks `sources/pokeemerald`, `sources/pokefirered` und `sources/pokemon-clover`.
- Frühere Emerald-Archivdateien, falls im Branch/Git-Verlauf weiterhin vorhanden.

**Wichtig:** `.gitignore` verhindert höchstens zukünftiges versehentliches Hinzufügen; getrackte Dateien werden dadurch nicht aus dem aktuellen Commit oder der Historie gelöscht. Eine vollständige Bereinigung braucht echte Git-Entfernungen. Das Löschen bzw. Umschreiben der Historie wurde nicht durchgeführt.

## Bereits erledigte Maßnahmen

- Aktive README und Dokumentationsindex auf HeartGold/PixelsFX-Arbeitsablauf fokussiert.
- HeartGold/SoulGold als unterschiedliche Plattform-/Quellbasen abgegrenzt.
- Prüfgates für Uploads, Baseline-Build und PixelFX-Portierung dokumentiert.
- Schutzregeln für lokal zu prüfende Binärdateien ergänzt.

## Blocker und nächste Schritte

### P0 — Altbestand und Uploads

- [ ] In einem lokalen Checkout die oben genannten Altdateien und unerwünschten Gitlinks aus dem aktuellen Tree entfernen.
- [ ] Eigentümer klärt Herkunft, Rechte und Zweck beider priorisierter Uploads; unbekannte Binärdateien nicht ausführen.
- [ ] ZIP-Vorschau zeigt Fehlermeldung; nicht als gültiges Archiv voraussetzen.
- [ ] Wenn vollständige Entfernung aus der Git-Historie gewünscht ist, separate History-Rewrite-Maßnahme mit Backup und Teamabstimmung durchführen.

### P1 — HeartGold-Codebasis

- [ ] Upstream-Installations-/Build-Anleitung und Nutzungsbedingungen am gepinnten Stand prüfen.
- [ ] Baseline-Build in zulässiger Umgebung ausführen und Ergebnis protokollieren.
- [ ] Danach eine konkrete, kleine HeartGold-Codeänderung auswählen.

### P2 — PixelFX-Prototyp und Portierung

- [ ] Einen passenden Effekt als Code-Prototyp suchen oder erstellen und rendern.
- [ ] PixelFX-Codeprüfung und HeartGold-Portierung getrennt ausweisen.
- [ ] DS-In-Game-Tests nur nach tatsächlicher Ausführung als abgeschlossen markieren.

Keine vollständige ROM oder Spielstände versionieren. Keine Builds, Sichtungen oder Codeänderungen behaupten, solange die Nachweise fehlen.
