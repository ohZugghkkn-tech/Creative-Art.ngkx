# Projektstatus und nächste Schritte

**Statusaufnahme:** 5. November 2026. Dieser Status unterscheidet bestätigte Repository-Fakten von ungeprüften Uploads und nicht ausgeführten lokalen Tests.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| Projektziel | HeartGold-Code-Neuaufbau festgelegt | Der aktuelle Arbeitsauftrag ist [HeartGold-Code-Neuaufbau](HEARTGOLD-CODE-REBUILD.md); SoulGold-Dokumente sind historische Referenzen. |
| Höchste unmittelbare Priorität | Zwei letzte Uploads ungeprüft | `Pokemon - HeartGold Version (Europe).zip` und `decoded-20261105072839.bin` wurden im Commit `7edc36f` hinzugefügt. |
| ZIP-Upload | Nicht als Archiv validiert | Commit-Vorschau enthält eine ROMSFUN-Fehlermeldung als Text; keine gültige ZIP-/ROM-Datei ist damit belegt. |
| BIN-Upload | Format/Herkunft unbekannt | Commit-Vorschau reicht zur Bestimmung von Inhalt, Herkunft und Eignung nicht aus. |
| HeartGold-Code-Referenz | Gepinntes Submodule vorhanden | `sources/pokeheartgold` verweist auf `pret/pokeheartgold`; Arbeitsbasis, Build und Lizenzbedingungen sind noch zu verifizieren. |
| PixelFX | Code-/Render-Werkzeug dokumentiert | Bibliothek kann Effekte rendern und prüfen; daraus folgt keine HeartGold-Portierung oder Integration. |
| HeartGold-Inventar/QA | Noch nicht erstellt | Erst nach Verifizierung der Ziel-Codebasis sinnvoll aufzubauen. |
| Build/Emulator/Regression | Nicht belegt | Keine hier nachgewiesenen lokalen Build- oder Emulatorläufe. |
| Ältere SoulGold-Dateien/Planung | Historisch, erneut zu prüfen | Vorhandene Dokumente und Archive nicht automatisch löschen oder als aktuelle Grundlage behandeln. |

## Blocker und Risiken

1. **Upload-Gültigkeit:** Die ZIP-Commit-Vorschau ist eine Fehlernachricht, kein gültiges Archiv. Die `.bin`-Datei ist in Format und Inhalt ungeklärt.
2. **Herkunft/Rechte:** Für beide Uploads fehlen bestätigte Herkunft und Weitergaberechte. Keine Datei erneut hochladen oder veröffentlichen.
3. **Ziel-Codebasis:** Das HeartGold-Submodule ist eine Referenz; ein erfolgreicher, reproduzierbarer Build mit zulässigen Eingaben ist nicht nachgewiesen.
4. **Historische SoulGold-Dokumentation:** Move- und PixelFX-Checklisten sind nicht automatisch HeartGold-spezifisch und dürfen nicht als HeartGold-QA-Ergebnis gelten.
5. **PixelFX-GBA-Eignung:** Effekte müssen ausgewählt, in Pixel-/Farb-/Speicherlimits übersetzt, in den Zielcode integriert und getestet werden.

## Nächste Schritte nach Priorität

### P0 — Die zwei Uploads

- [ ] Herkunft und Rechte klären.
- [ ] Lokal und isoliert Dateiformat, Größe und Prüfsummen ermitteln; unbekannte Binärdateien nicht ausführen.
- [ ] ZIP-Gültigkeit und `.bin`-Format anhand verlässlicher Informationen prüfen.
- [ ] Bei ungültigen/ungeeigneten Dateien blockiert dokumentieren und zulässige Quelltexte, eigene Assets oder Patch-Dateien anfordern.

### P1 — HeartGold-Code-Neuaufbau

- [ ] Prüfen, ob der gepinnte `sources/pokeheartgold`-Stand die vereinbarte Codebasis sein soll; Upstream-Lizenz und Build-Anleitung beachten.
- [ ] Build-Abhängigkeiten und lokale, rechtmäßige Eingaben dokumentieren.
- [ ] HeartGold-spezifischen Projektumfang und QA-Inventar festlegen; SoulGold-Annahmen nicht blind übernehmen.

### P2 — PixelFX-Prototyp

- [ ] Nach geklärter Codebasis einen repräsentativen visuellen Fall auswählen.
- [ ] Mit PixelFX vorhandene Module suchen, rendern, Frames prüfen und ggf. eigenen Effekt im Code entwickeln.
- [ ] PixelFX-Effekt für HeartGold anpassen/portieren und in der Zielumgebung prüfen; Vorschau und Integration getrennt dokumentieren.

### P3 — Skalierung und Abnahme

- [ ] HeartGold-spezifisches Inventar, Vorher/Nachher-Nachweise und reproduzierbare Regression ergänzen.
- [ ] Änderungen, Tests, Patch-Basis und bekannte Grenzen dokumentieren.

**Gate:** Keine vollständige ROM oder Spielstände versionieren. Keine Integration behaupten, bevor die Arbeitsbasis zulässig und reproduzierbar ist und ein entsprechender Testnachweis vorliegt.

## Statusdefinitionen

- **Offen:** Noch nicht bearbeitet oder belegt.
- **In Arbeit:** Bearbeitung läuft, Abnahmekriterien sind nicht erfüllt.
- **Blockiert:** Konkrete Voraussetzung fehlt und ist benannt.
- **Geprüft:** Prüfung mit Version und reproduzierbarem Nachweis abgeschlossen.
- **Integriert:** Änderung liegt in der freigegebenen Quellbasis; bedeutet nicht automatisch getestet.
- **Getestet:** Benannte Tests wurden mit dokumentiertem Ergebnis durchgeführt.

## Benötigt vom Eigentümer

Bitte Herkunft/Rechte und den beabsichtigten Zweck beider priorisierten Uploads bestätigen. Wenn die ZIP nur eine Download-Fehlermeldung ist, bitte eine zulässige HeartGold-Codequelle, eigene Assets oder einen erlaubten Patch statt einer vollständigen kommerziellen ROM bereitstellen. Unbekannte Binärdateien bitte nicht ausführen.
