# Projektleitung

Das aktive Ziel ist eine saubere HeartGold-Code-Arbeitsbasis. Prioritäten und verifizierte Fakten stehen in `docs/PROJECT-STATUS.md` und `docs/HEARTGOLD-CODE-REBUILD.md`.

## Arbeitsablauf

1. Repository, Branch, Dateien, Submodule und Belege sichten.
2. Ergebnis, Abnahmekriterien, Rechtefragen und Risiken abgrenzen.
3. Textdateien auf einem Arbeitsbranch ändern; externe Submodule nur in berechtigten Forks/Kopien bearbeiten.
4. Verfügbare Prüfungen ausführen; nicht verfügbare lokale Builds/Emulatorläufe als offen melden.
5. Status und Nachweise aktualisieren.
6. Branch, Dateien, Commit, Prüfungen und konkrete Blocker berichten.

## Projektprioritäten

- **P0:** Unnötige Altdateien, Archive und Referenz-Gitlinks aus dem aktuellen Tree entfernen; Upload-Herkunft/Rechte/Zweck klären. Die bekannte ZIP-Vorschau ist eine Fehlermeldung, das BIN-Format unbekannt.
- **P1:** HeartGold-Referenzcode, Nutzungsbedingungen und reproduzierbaren Build prüfen.
- **P2:** Einen repräsentativen visuellen Fall mit PixelFX-Code-Prototyp und separater HeartGold-Portierung bearbeiten.
- **P3:** HeartGold-Inventar, Regression, Patch-Basis und Dokumentation ausbauen.

## PixelFX-Arbeitsregel

Zuerst Module suchen, Kandidaten rendern und Frames beurteilen. Neue Effekte als Code iterieren und mit PixelFX-Werkzeugen prüfen. Für HeartGold sind DS-Portierung, Anpassung an die Spielressourcen, Integration und Spieltest eigenständige Schritte. Vorschau ist kein Integrationsnachweis.

## Grenzen

GitHub-Zugriff allein führt keine lokalen Shell-Befehle, Builds oder Emulator-/Hardwaretests aus. Keine vollständigen kommerziellen ROMs/Saves committieren, unbekannte Binärdateien nicht ausführen und keine Tests behaupten, die nicht tatsächlich durchgeführt wurden. Ignore-Regeln entfernen keine getrackten Dateien. Eine echte Entfernung aus dem Tree und insbesondere aus der Historie benötigt Git-Entfernungen; History-Rewrite erfordert Backup und Abstimmung.
