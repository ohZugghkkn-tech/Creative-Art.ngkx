# Phase 1 — Arbeitsbasis (Bericht an Projektleitung)

**Datum:** 05.11.2026 · **Branch:** `arena/4c6e3687-creative-art-ngkx` · **Status:** Phase 1 abgeschlossen, Gate 1 **großteils freigegeben** (ein Blocker für visuelle Prüfung)

## 1. Was geprüft / geladen wurde

| Bereich | Ergebnis |
|---|---|
| Branch / Working Tree | ✅ `arena/4c6e3687-creative-art-ngkx`, sauber, nichts uncommittet |
| PixelFX-Submodule | ✅ Geladen @ `a84159688af3ca37a4be05a0d422b94451b2e24e`; `node tools/render.mjs fire/torch` → **60 Frames gerendert**, Toolchain lebt |
| SoulGold-Quellstand | ✅ `Eemeliri/soulgold` Tag **v1.2**, Commit **`b7d1534e3d120da9df0b03b685a91b655cf87cad`** — exakt der verpinnte Commit |
| SoulGold-Quelle lokal | ✅ geclont unter `/home/user/soulgold-v1.2` (außerhalb des Repo, nicht versioniert) |
| Emerald-Quelle | ⏳ Submodule noch nicht geladen (nur auf Abruf nötig) |

## 2. ROM-/Patch-Versionen (belastbare Metadaten)

| Datei | Größe | SHA256 |
|---|---|---|
| `soulgold-v1.2.gba` (aus `soulgold-v1.2.zip`) | 33 554 432 B (32 MiB) | `e818bcd2b8a33fee0a723c4b27613cbff621f8b3bf0ab7293edd87a428634cb3` |
| `Pokemon - Emerald Version (U)(TrashMan).gba` | 14 929 745 B | `60b67685071823d19f3cf59c493ae7cbebe7c7caa468d82e30d2278f59476b04` |

- Beide sind gültige GBA-Images (32 MiB bzw. ~14,9 MiB; GBA-Header-Magic am Offset 0 vorhanden).
- Die Quelle enthält `rom.sha1 = f3ae088181bf583e55daf962a92bb46f4f1d07b7 pokeemerald.gba` → SoulGold baut auf **Emerald** als Basis auf. Das bezieht sich auf die Basis-ROM, nicht auf die SoulGold-ROM.
- **Offen:** Die SoulGold-ROM wurde **nicht unabhängig als „exakt v1.2" belegt** (kein lokaler Build zum Abgleich der Prüfsumme möglich → siehe Blocker). Filename + Hash sind dokumentiert, ein Build-Abgleich fehlt.

## 3. Move-Inventar (Quelle vs. PolishedDex)

| Messgröße | Wert |
|---|---|
| PolishedDex SoulGold Moves | **935** (seitenseitig bestätigt: „Showing 935 of 935 moves") |
| Move-Konstanten in `include/constants/moves.h` (`enum Move`) | **959** (inkl. 20 Aliases wie `MOVE_DOUBLESLAP = MOVE_DOUBLE_SLAP` + `MOVE_NONE`) |
| Eigene Animationsskripte in `data/battle_anim_scripts.s` | **942** `gBattleAnimMove_<Name>::`-Labels |
| davon Gigantamax/Max-Animationen | **52** (GMax*, Max*) |
| Andere Anim-Familien in der Datei | 60 `gBattleAnimGeneral_`, 8 `gBattleAnimSpecial_`, 10 `gBattleAnimStatus_` |

**Erklärung der Zahlen:** 942 Animationen ≠ 935 Moves, weil die Quelle Animationen für **mehr** Moves bereithält (u. a. 52 G-Max/Max-Attacken) und einige Moves eine **gemeinsame** Animation teilen. Die 959 Konstanten enthalten Aliases/`MOVE_NONE`.  
**Differenzliste (935 vs. Quelle) ist Phase-2-Arbeit:** jeder der 935 Moves bekommt eine eigene Zeile mit Quelle-Zuordnung. Kein Move wird stillschweigend weggelassen.

## 4. Build-Toolchain / Emulator

| Tool | Verfügbar? |
|---|---|
| Node.js | ✅ v22.22.3 (PixelFX benötigt ≥18) |
| ARM-Toolchain (`arm-none-eabi-gcc`, devkitpro) | ❌ **nicht im Sandbox** |
| Emulator (mGBA, VBA, …) / Display | ❌ **nicht im Sandbox** |
| ffmpeg (GIF/MP4-Vorschau) | ❌ fehlt (optional) |

## 5. Ignore-Regeln

- Keine `.gitignore` im Repo. ROMs sind tracked — nach Abschaffung der „keine ROMs ins Git"-Regel (privates Projekt, wird nicht veröffentlicht) ist das gewollt. Lokale Arbeitskopien (z. B. der SoulGold-Clone) liegen **außerhalb** des Repo und werden nicht getrackt.

## 6. Blocker (konkret, nicht raten)

1. **Keine ARM-Toolchain → kein ROM-Build im Sandbox.** Phase 7 (Integration/Build) kann hier nicht ausgeführt werden.  
   *Was fehlt:* devkitpro / `arm-none-eabi-*` auf einer lokalen Maschine.
2. **Kein Emulator/Display → Phase 4 (Walkthrough-Visuelles) nicht hier durchführbar.** Die visuelle Sichtung des Spiels muss **extern** (lokaler Emulator, Gerät oder bereitgestellte Clips/Screenshots) passieren.  
   *Was fehlt:* einGBA-fähiger Laufwerk + originales Bildmaterial/Vids.
3. **SoulGold-ROM-Version nicht durch Build belegt** (s.o.).

## 7. Was als Nächstes (empfohlen)

1. **Phase 2 (ist hier machbar):** Erstelle `docs/soulgold-v1.2-animation-inventory.csv` — eine Zeile pro der 935 PolishedDex-Moves, mit Quelle-Zuordnung (`gBattleAnimMove_<Name>`), Typ/Kategorie, Zielverhalten, Status. Das ist statischer Quellcode-Abgleich, kein Emulator nötig.
2. **Phase 3/4 (benötigt extern):** visuelle Prüfung via lokalem Emulator oder Clips.
3. **PixelFX-Prototypen:** erste Renderings für priorisierte Effektfamilien (bereits lauffähig).
