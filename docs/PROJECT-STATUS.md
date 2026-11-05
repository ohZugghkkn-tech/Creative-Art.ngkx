# Projektstatus und nächste Schritte

**Statusaufnahme:** 5. November 2026. Nur GitHub-Metadaten, Commit-Vorschau und Dokumentation wurden geprüft; keine lokalen Dateien oder Builds wurden ausgeführt.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| Ziel | HeartGold-Code-Arbeitsbasis geplant | Kein bloßer Namenswechsel: HeartGold (DS) und SoulGold (GBA) sind unterschiedliche Projekt-/Plattformbasen. |
| HeartGold-Referenz | Gepinntes Submodule vorhanden | `sources/pokeheartgold` → `pret/pokeheartgold` @ `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`; Upstream kennzeichnet Stand als instabilen WIP. |
| Zwei priorisierte Uploads | Ungeprüft, nicht als Basis geeignet bestätigt | ZIP-Commit-Vorschau ist Fehlermeldungstext; `.bin`-Format und Zweck unbekannt. |
| PixelFX | Code-/Renderwerkzeug dokumentiert | Kein Nachweis einer HeartGold-Portierung oder In-Game-Integration. |
| Codeänderungen / Build / Test | Nicht erfolgt/nicht belegt | GitHub-Dokumentationsänderungen sind keine Spielcodeänderung. |
| Historische SoulGold-Unterlagen | Nicht HeartGold-validiert | Als historische Referenz beibehalten, nicht automatisch übertragen. |

## Bereits erledigte Maßnahmen

- HeartGold und SoulGold als unterschiedliche Plattform-/Quellbasen abgegrenzt.
- Prüfgates für Uploads, Baseline-Build und PixelFX-Portierung beschrieben.
- HeartGold-Upstream-WIP-Risiko dokumentiert.
- PixelFX von HeartGold-Integration und Spieltest klar unterschieden.
- Branch `.gitignore` um Schutzregeln für HeartGold-Upload-Artefakte ergänzt.

## Blocker und nächste Schritte

### P0 — Uploads

- [ ] Eigentümer klärt Herkunft, Rechte und Zweck beider Dateien.
- [ ] ZIP-Vorschau zeigt Fehlermeldung; nicht als gültiges Archiv voraussetzen.
- [ ] BIN nicht ausführen; ohne bekannte Herkunft/Format blockiert lassen.

### P1 — HeartGold-Codebasis

- [ ] Upstream `INSTALL.md`, Lizenz-/Nutzungshinweise und Build-System am gepinnten Commit lokal prüfen.
- [ ] Baseline-Build in zulässiger Umgebung ausführen und Ergebnis protokollieren.
- [ ] Erst dann eine konkrete, kleine HeartGold-Codeänderung auswählen.

### P2 — PixelFX-Prototyp und Portierung

- [ ] Einen geeigneten Effekt als Code-Prototyp suchen oder erstellen und rendern.
- [ ] PixelFX-Codeprüfung und HeartGold-Portierung getrennt ausweisen.
- [ ] DS-In-Game-Tests nur nach tatsächlicher Ausführung als abgeschlossen markieren.

**Gate:** Keine vollständige ROM oder Spielstände versionieren. Keine tatsächlichen Builds, Sichtungen oder Codeänderungen behaupten, solange die Nachweise fehlen.

## Statusdefinitionen

- **Offen:** Noch nicht bearbeitet/belegt.
- **In Arbeit:** Bearbeitung läuft, Abnahmekriterien offen.
- **Blockiert:** Voraussetzung fehlt und ist benannt.
- **Geprüft:** Version und reproduzierbarer Nachweis vorhanden.
- **Integriert:** Änderung liegt in freigegebener Quelle; nicht automatisch getestet.
- **Getestet:** Benannte Tests wurden mit Ergebnis protokolliert.

## Benötigt vom Eigentümer

Herkunft/Rechte und vorgesehener Zweck der beiden priorisierten Uploads. Die ZIP-Datei sollte wegen der Fehlermeldung nicht als Codebasis gelten. Keine vollständige kommerzielle ROM als Ersatz hochladen; nutze zulässige Quelltexte, eigene Assets oder erlaubte Patches.
