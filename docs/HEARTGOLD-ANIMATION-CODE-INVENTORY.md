# HeartGold-Animationscode: belegtes Inventar und Grenzen

**Arbeitszweck:** Quellcode-Einstiegspunkte und Animations-IDs sammeln, damit Codeänderungen an HeartGold-Animationen konkret geplant und später getestet werden können.

**Quelle:** Nur Dateien/Referenzstände, die im Repository `ohZugghkkn-tech/Creative-Art.ngkx` festgehalten sind: Gitlink `sources/pokeheartgold` auf `pret/pokeheartgold` Commit `e1d5a4606640e31c44d36714ad0b5cdd9c8763fd`. Die Daten werden nicht aus den ungeprüften ZIP-/BIN-Uploads entnommen.

> **Abdeckung:** Dies ist ein reproduzierbarer Startbestand aus den benannten Animationskonstanten und Code-Einstiegspunkten. Es ist **keine vollständige Liste aller ~1100 oder mehr visuellen Einzelanimationen**. Das Haupt-Repository enthält nur den Gitlink zur Decompilation, nicht deren Quelldateien. Die zwei Upload-Binärdateien sind nicht untersucht. Es wäre nicht korrekt, fehlende Sprite-, Move- oder Ressourcen-IDs zu erraten.

## A. Benannte allgemeine Kampf-Animationscodes

Die folgenden IDs/Symbole sind in `include/constants/battle_subscript.h` im oben gepinnten Submodule benannt. Die CSV-Datei enthält dieselben Zeilen maschinenlesbar.

| ID | Code-Symbol | Verwendungsgruppe |
|---:|---|---|
| 0 | `BATTLE_ANIMATION_NONE` | Kein Battle-Animationseffekt |
| 1 | `BATTLE_ANIMATION_ASLEEP` | Status: Schlaf |
| 2 | `BATTLE_ANIMATION_POISONED` | Status: Gift |
| 3 | `BATTLE_ANIMATION_BURNED` | Status: Verbrennung |
| 4 | `BATTLE_ANIMATION_FROZEN` | Status: eingefroren |
| 5 | `BATTLE_ANIMATION_PARALYZED` | Status: Paralyse |
| 6 | `BATTLE_ANIMATION_CONFUSED` | Status: Verwirrung |
| 7 | `BATTLE_ANIMATION_INFATUATED` | Status: verliebt |
| 8 | `BATTLE_ANIMATION_LEVEL_UP` | Levelaufstieg |
| 9 | `BATTLE_ANIMATION_BAG_ITEM` | Tasche/Kampf-Item |
| 10 | `BATTLE_ANIMATION_HELD_ITEM` | Getragenes Item |
| 11 | `BATTLE_ANIMATION_SHINY` | Shiny-Auftritt |
| 12 | `BATTLE_ANIMATION_STAT_BOOST` | Statuswert steigt |
| 13 | `BATTLE_ANIMATION_STAT_DROP` | Statuswert sinkt |
| 14 | `BATTLE_ANIMATION_RESTORE_HP` | KP-Heilung |
| 15 | `BATTLE_ANIMATION_SUB_OUT` | Symbol belegt; Semantik je Aufrufer verifizieren |
| 16 | `BATTLE_ANIMATION_SUB_IN` | Symbol belegt; Semantik je Aufrufer verifizieren |
| 17 | `BATTLE_ANIMATION_ITEM_ESCAPE` | Item-/Fluchtreaktion |
| 18 | `BATTLE_ANIMATION_WEATHER_FOG` | Wetter: Nebel |
| 19 | `BATTLE_ANIMATION_WEATHER_RAIN` | Wetter: Regen |
| 20 | `BATTLE_ANIMATION_WEATHER_HAIL` | Wetter: Hagel |
| 21 | `BATTLE_ANIMATION_WEATHER_SAND` | Wetter: Sandsturm |
| 22 | `BATTLE_ANIMATION_WEATHER_SUN` | Wetter: Sonne |
| 25 | `BATTLE_ANIMATION_SUBSTITUTE_IN` | Delegator erscheint |
| 26 | `BATTLE_ANIMATION_SUBSTITUTE_OUT` | Delegator verschwindet |
| 27 | `BATTLE_ANIMATION_HAPPY` | Fröhlichkeitsreaktion |
| 28 | `BATTLE_ANIMATION_EATING` | Ess-/Beerenreaktion |
| 29 | `BATTLE_ANIMATION_ANGRY` | Ärgerreaktion |
| 30 | `BATTLE_ANIMATION_DAMAGE_CURSE` | Wiederkehrender Fluchschaden |
| 31 | `BATTLE_ANIMATION_DAMAGE_NIGHTMARE` | Albtraumschaden |
| 32 | `BATTLE_ANIMATION_DAMAGE_LEECH_SEED` | Egelsamen-Schaden |
| 33 | `BATTLE_ANIMATION_DAMAGE_BIND` | Umschlingungs-Schaden |
| 34 | `BATTLE_ANIMATION_DAMAGE_WRAP` | Wickel-Schaden |
| 35 | `BATTLE_ANIMATION_DAMAGE_FIRE_SPIN` | Feuerwirbel-Schaden |
| 36 | `BATTLE_ANIMATION_DAMAGE_MAGMA_STORM` | Magmasturm-Schaden |
| 37 | `BATTLE_ANIMATION_DAMAGE_CLAMP` | Klammer-Schaden |
| 38 | `BATTLE_ANIMATION_DAMAGE_WHIRLPOOL` | Whirlpool-Schaden |
| 39 | `BATTLE_ANIMATION_DAMAGE_SAND_TOMB` | Sandgrab-Schaden |
| 40 | `BATTLE_ANIMATION_DAMAGE_INGRAIN` | Verwurzelungs-Schaden |

Die Konstantenlücken 23–24 sind in diesem Block nicht als benannte `BATTLE_ANIMATION_*`-Symbole definiert. Keine Bedeutung dafür ableiten.

## B. Codepfade, die für Move-Animationen wichtig sind

Das Submodule trennt allgemeine `BATTLE_ANIMATION_*`-Effekte von Attackenanimationen. Attacken laufen über den Move-Wert und eine `MoveAnimation`-Nachricht.

| Ort im gepinnten HeartGold-Quellstand | Relevante Symbole | Rolle |
|---|---|---|
| `asm/macros/btlcmd.inc` | `PlayMoveAnimation`, `PlayMoveAnimationOnMons`, `PlayBattleAnimation`, `PlayBattleAnimationFromVar` | Script-Befehle, über die Kampf-Scripts Move- oder Battle-Effekte auslösen |
| `src/battle/battle_command.c` | `BtlCmd_PlayMoveAnimation`, `BtlCmd_PlayMoveAnimationOnMons` | Liest Move/Battler/Target aus dem Script-Kontext und leitet die Animation an den Controller weiter |
| `include/battle/battle_controller.h` | `BattleController_SetMoveAnimation`, `BattleController_EmitPlayMoveAnimation`, `BattleController_SetMoveAnimationAttackerToDefender` | Controller-Schnittstelle für Animationserstellung und Übergabe |
| `src/battle/battle_controller.c` | `BattleController_SetMoveAnimation`, `BattleController_EmitPlayMoveAnimation` | Baut `MoveAnimation` mit Move, Angreifer/Ziel, Schaden, Power, Terrain-/Feldzustand, Form-/Battlerdaten und sendet sie an die Anzeige |
| `include/battle/battle_message_structs.h` | `MoveAnimation` | Datenstruktur für den Übergang von Battle-Code zur Anzeige |
| `include/battle/battle_display.h` | `ov12_0225A914`, `ov12_0225B200`, `ov12_0225B3A0` | Display-Handler-Einstiegspunkte, weitere Zuordnung prüfen |
| `files/battledata/script/subscript/` | z. B. `subscript_0059_Bind.s` | Beispiel: Bind/Wickel/Feuerwirbel/Magma-Sturm/Klammer/Whirlpool/Sandgrab werden per Symbol getrennt behandelt |

**Wichtig für konkrete Verbesserungen:** Der `PlayMoveAnimation`-Aufruf belegt den Codepfad, aber nicht automatisch die tatsächliche grafische Ressource oder das vollständige Animationsskript des Moves. Für jeden Move müssen dessen Symbol/ID, Script-Aufrufer und Display-/Ressourcenzuordnung separat nachgewiesen werden. Wenn der gepinnte Stand diese Zuordnung nicht offenlegt, Status `Mapping ungeklärt` setzen.

## C. Weitere visuelle Animationssysteme

Im gepinnten Submodule sichtbare Code-Einstiege (keine vollständige Sequenzliste):

- `src/sprite.c` und `src/sprite_system.c`: 2D-Sprite-Sequenzen und Frame-/Speed-Steuerung.
- `src/field/map_prop_animation.c`: Feld-/Map-Objektanimationen, geladen anhand Objekt-ID und Animationsindex.
- `include/field/overlay_01_021FB878.h`: 3D-Modellanimationen (`Field3DModelAnimation`).
- `src/field/legend_cutscene_camera.c`, `src/field/event_cutscene_sinjoh.c`: Cutscene- und Modellanimationsabläufe.
- `src/field/gymmick/`: Gymmick-/Objektanimationen.
- Battle-Controller-/Display-Code: Trainer, Pokémon-Einwechseln/Auswechseln, Faint, Formwechsel, Wetter und UI-Übergänge.

## D. Erweiterungs-CSV pro einzelnem Asset/Codepfad

Für die eigentliche Gesamterfassung `heartgold-visual-animation-inventory.csv` verwenden. Pflichtfelder:

`scope, symbol_or_id, source_path, caller_or_script, resource_id, visual_purpose, mapping_status, visual_review_status, change_status, test_status, evidence, notes`

Statusvokabular:

- `source-confirmed` — Quellpfad und Symbol/ID sind im gepinnten Commit vorhanden.
- `mapping-unresolved` — Aufruf ist sichtbar, zugehörige Grafiksequenz/Ressource aber nicht zweifelsfrei zugeordnet.
- `not-reviewed` — keine visuelle Sichtung dokumentiert.
- `planned`, `changed`, `built`, `in-game-tested` — nur mit tatsächlichem Nachweis setzen.

Keine Einträge für fehlende Animations-IDs aus den beiden ungeprüften Uploads oder aus Vermutungen erfinden. Keine ROM-Frames oder geschützte Spielressourcen ins Repository kopieren.
