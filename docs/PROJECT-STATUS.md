# Projektstatus und nächste Schritte

**Statusbasis:** geprüft anhand des `main`-Trees bei `45b4363f764193beadf9361fc1b829efb0935ea8`. Für das Animationsinventar wurde zusätzlich ausschließlich der in diesem Repository gepinnte Gitlink `sources/pokeheartgold` verwendet (Commit `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`). Die ungeprüften ZIP-/BIN-Uploads wurden nicht als Quelle verwendet.

## Kurzstatus

| Bereich | Status | Beleg / offene Frage |
| --- | --- | --- |
| HeartGold-Code-Referenz | Gepinnt | `sources/pokeheartgold` zeigt auf den oben genannten HeartGold-Quellcommit; Upstream-WIP-Status beachten. |
| Allgemeine Kampf-Animationscodes | Teilinventar angelegt | 38 benannte `BATTLE_ANIMATION_*`-Konstanten plus Code-Einstiegspunkte in `HEARTGOLD-ANIMATION-CODE-INVENTORY.md` und `heartgold-visual-animation-inventory.csv`. |
| Move-Animationen | Aufrufkette belegt; Move→Ressource-Mapping nicht vollständig | Battle-Scripts verwenden `PlayMoveAnimation*`, dann Controller und `MoveAnimation`; Grafikressourcen müssen pro Move gesondert verbunden werden. |
| 1100+ visuelle Einzelanimationen | Nicht gezählt/nicht vollständig inventarisiert | Im Hauptrepository ist der Quellcode als Submodule-Gitlink und nicht als normale Dateien enthalten. Keine vollständige Liste ableiten/erfinden. |
| Uploads | Ungeprüft | Wurden für dieses Inventar nicht verwendet. |
| Build/Emulator/visuelle Sichtung | Nicht ausgeführt | Keine lokalen Tests behauptet. |

## Inventardateien

- `HEARTGOLD-ANIMATION-CODE-INVENTORY.md` — Codepfade, Grenzen und Arbeitsmethode.
- `heartgold-battle-animation-codes.csv` — benannte allgemeine Kampf-Animationskonstanten.
- `heartgold-visual-animation-inventory.csv` — Starter-Zeilen für Codepipeline/Systems; `mapping-unresolved` ist absichtlich kein erfundener Animationscode.

## Nächste Schritte

1. Im lokalen Clone das gepinnte HeartGold-Submodule initiieren und mit dem dokumentierten Commit abgleichen.
2. In lesbarem Quelltext die tatsächlichen Battle-Animation-Resource-Maps sowie Move→Animation-Verknüpfungen finden und strukturiert übernehmen.
3. Für jede Animation Quellpfad/ID, Aufrufer, Ressourcen-ID und Prüfstatus ergänzen. Unaufgelöste IDs ausdrücklich kennzeichnen.
4. Erst mit zulässiger Entwicklungsumgebung rendern/builden und im Spiel prüfen; Resultate und Umgebung dokumentieren.
5. Unnötige ältere Submodule bleiben ein separater Cleanup-Punkt; sie wurden hier nicht verändert.
