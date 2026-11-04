# SoulGold 1.2 — PixelFX-Effekt-Checkliste in Pokémon-Begriffen

**Zweck:** Inventar der PixelFX-Effekte, die als Ideen/Material für eine visuelle Überarbeitung von SoulGold dienen könnten.
**Wichtig:** „In PixelFX vorhanden“ heißt **nicht**, dass der Effekt bereits in SoulGold 1.2 eingebaut ist. Jede Zeile muss gegen die SoulGold-Animationen geprüft werden.
**Fokus:** SoulGold 1.2. Emerald ist nur die technische Basis. Keine Bewertung des unveränderten Emerald-Spiels.

## Legende

- `[ ] v1.2 ansehen` = SoulGold-Animation in einer v1.2-Szene noch sichten.
- `[ ] Kandidat` = entscheiden, ob PixelFX für diese Effektfamilie wirklich eine Verbesserung bringt.
- `[ ] integriert` = erst nach Konvertierung, Einbau und GBA-Test abhaken.
- Die englischen Namen in `Code` sind die originalen Effekt-IDs im Ordner `sources/pixelfx/src/fx/`.

## Referenzen für die Prüfung

- [SoulGold Moves auf PolishedDex](https://www.polisheddex.app/soulgold/moves) — die Seite meldet **935 Moves** und zeigt u. a. Typ, Kategorie, Stärke, Genauigkeit, AP und TM/VM-Status. Diese 935 Moves sind der vollständige Arbeitsumfang: **jeder Move bekommt einen eigenen Prüf- und Änderungsstatus**.
- Die Seite zeigt Move-Daten, aber nicht zwingend die jeweilige Animation als Video. Deshalb ordnen wir jeden Eintrag mit SoulGold-v1.2-Quellcode und Gameplay-Sichtung einer Animation/Familie zu. Den Versionsstand der 935 Einträge gleichen wir mit dem gepinnten [SoulGold-v1.2-Quellstand](https://github.com/Eemeliri/soulgold/tree/v1.2) ab und dokumentieren Abweichungen.
- Jeder Move bleibt einzeln auf der Checkliste. Wenn mehrere Moves dasselbe Animationsskript teilen, dürfen sie dieselbe verbesserte PixelFX-Animation verwenden; sie werden aber einzeln als zugeordnet, geprüft und integriert abgehakt.

## A. Pokémon-Attacken und Kampfaktionen

### 1. Physische Treffer: Tackle, Biss, Kratzer, Hieb, Kralle, Schlag

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `melee/claw-swipe`, `melee/dagger-flurry`, `melee/double-slash`, `melee/hammer-smash`, `melee/heavy-cleave`, `melee/scythe-reap`, `melee/spear-sweep`, `melee/spin-slash`, `melee/sword-slash`, `melee/thrust`, `melee/uppercut`, `melee/whip-crack`
- **Pokémon-Sprache:** Kratzer-/Klingen-/Klauenangriffe, Mehrfachhiebe, Schlag-/Trittangriffe und ein klarer Kontaktblitz.

### 2. Treffer-Reaktion, Volltreffer, Abwehr und Gegenangriff

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `impacts/blunt-hit`, `impacts/bullet-impact`, `impacts/crit-hit`, `impacts/ground-slam`, `impacts/heavy-landing`, `impacts/hit-flash`, `impacts/hit-spark`, `impacts/impact-frame`, `impacts/parry`, `impacts/ricochet`, `impacts/shield-block`
- **Pokémon-Sprache:** sichtbarer Treffer, Volltreffer, Zurückprallen, Schutzschild, Konter und Bodenaufprall.

### 3. Geschosse, Kugeln, Steine, Samen und Energie-Projektile

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `projectiles/arrow`, `projectiles/bullet-tracer`, `projectiles/cannonball`, `projectiles/energy-disc`, `projectiles/flare`, `projectiles/homing-missile`, `projectiles/laser-bolt`, `projectiles/magic-missile`, `projectiles/muzzle-pistol`, `projectiles/muzzle-shotgun`, `projectiles/muzzle-smg`, `projectiles/plasma-shot`, `projectiles/rocket`
- **Pokémon-Sprache:** etwa Stein-/Samen-/Energiegeschoss, Spukball-artiger Flugkörper und zielsuchendes Projektil. Die moderne Waffenoptik ist nicht automatisch Pokémon-tauglich.

### 4. Flammen, Glut, Feueratem und Feuerexplosionen

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `fire/brazier`, `fire/campfire`, `fire/candle`, `fire/fire-breath`, `fire/fire-ring`, `fire/fire-tornado`, `fire/fireball`, `fire/flame-pillar`, `fire/flamethrower`, `fire/meteor`, `fire/spirit-flame`, `fire/torch`; passende Wucht zusätzlich unter `explosions/`
- **Pokémon-Sprache:** Glut/Flammenwurf, Feuerodem, Feuerkreis, Feuersturm und Flammenwurf-Aufprall.

### 5. Wasser, Blasen, Wasserstrahl, Welle und Strudel

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `water/bubbles`, `water/drip`, `water/fountain`, `water/geyser`, `water/rain-splash`, `water/ripples`, `water/splash`, `water/water-jet`, `water/water-orb`, `water/waterfall`, `water/wave-crash`, `water/whirlpool`
- **Pokémon-Sprache:** Aquaknarre, Blubber, Wasserpuls, Surfer, Kaskade, Siedewasser und Whirlpool.

### 6. Eis, Frost, Eiszapfen und Zersplittern

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `ice/blizzard-vortex`, `ice/freeze`, `ice/frost-breath`, `ice/frost-nova`, `ice/ice-crystal`, `ice/ice-lance`, `ice/ice-shatter`, `ice/ice-spikes`, `ice/icicle-fall`, `ice/snowflake-burst`
- **Pokémon-Sprache:** Eisstrahl, Blizzard, Eissplitter, Lawine, Frosthauch und Einfrieren/Auftauen.

### 7. Elektro, Donner, Funkenschlag und Kettenblitz

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `lightning/ball-lightning`, `lightning/chain-lightning`, `lightning/charge-up`, `lightning/electrified`, `lightning/lightning-strike`, `lightning/plasma-ball`, `lightning/spark-arc`, `lightning/storm-cloud`, `lightning/tesla-coil`, `lightning/thunderclap`, `lightning/zap-hit`
- **Pokémon-Sprache:** Donnerblitz, Donnerschock, Donner, Ladungsphase, Funkenschlag und Ketteneffekt zwischen mehreren Zielen.

### 8. Pflanze, Blatt, Ranke, Wurzel und Sporen

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `nature/healing-bloom`, `nature/leaf-storm`, `nature/root-snare`, `nature/spore-burst`, `nature/thorns`, `nature/tornado`, `nature/vine-whip`, `weather/cherry-blossoms`, `weather/falling-leaves`
- **Pokémon-Sprache:** Rankenhieb, Rasierblatt, Blättersturm, Egelsamen, Schlafpuder, Pilzsporen und Heilung durch Pflanzenenergie.

### 9. Boden, Gestein und Erschütterung

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `nature/boulder`, `nature/earth-spike`, `nature/quake`, `moves/earth-stomp`, `moves/ground-pound`, `impacts/ground-slam`, `explosions/dirt-explosion`
- **Pokémon-Sprache:** Erdbeben, Steinhagel, Felswurf, Lehmschuss, Dampfwalze und Bodenwelle.
- **Bodenperspektive extra prüfen:** [ ] Staub/Dreck am Boden · [ ] Risse/Schockwelle breiten sich über das Feld aus · [ ] Treffer trifft beide Seiten korrekt · [ ] Boden bleibt nicht versehentlich dauerhaft verändert.
- **Entry Hazards/Feldfallen extra prüfen:** [ ] Tarnsteine · [ ] Stachler · [ ] Giftspitzen · [ ] Klebenetz. PixelFX liefert dafür keine fertige Pokémon-Mechanik; `nature/earth-spike`, `nature/thorns`, `nature/toxic-puddle` und `nature/root-snare` sind nur visuelle Ausgangspunkte.

### 10. Gift, Säure und schädliche Wolken

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `nature/acid-splash`, `nature/poison-cloud`, `nature/toxic-puddle`, `nature/spore-burst`, `status/poisoned`, `status/burning`
- **Pokémon-Sprache:** Säure, Giftstachel, Matschbombe, Giftwolke, Toxin und sichtbarer Status-Effekt. `burning` ist nur als visuelle Vorlage für Verbrennung relevant.

### 11. Psycho, Feenlicht und mystische Energie

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `arcane/arcane-beam`, `arcane/arcane-missiles`, `arcane/arcane-orb`, `arcane/magic-circle-cast`, `arcane/mana-burst`, `arcane/rune-circle`, `arcane/spell-charge`, `arcane/star-fall`, `arcane/time-stop`, `holy/halo`, `holy/feather-burst`, `holy/smite`, `holy/sunburst`
- **Pokémon-Sprache:** Psychokinese, Psystrahl, Konfusion, Mondgewalt, Zauberschein und Sternen-/Feenenergie. Nicht jede Fantasy-Rune passt ohne Anpassung in SoulGold.

### 12. Geist, Unlicht, Fluch, Spuk und Seelen-Effekte

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `shadow/black-hole`, `shadow/curse`, `shadow/dark-explosion`, `shadow/eclipse`, `shadow/grasping-hands`, `shadow/hex-sigil`, `shadow/life-steal`, `shadow/necro-skulls`, `shadow/shadow-flames`, `shadow/shadow-tendrils`, `shadow/soul-drain`, `shadow/void-orb`, `critters/ghost`, `critters/flying-skull`, `critters/wisp`
- **Pokémon-Sprache:** Spukball, Nachtnebel, Finsteraura, Unheilböen, Fluch, Absorber und Geistererscheinung.

### 13. Drache, Stahl und sonstige Typen ohne eigene PixelFX-Kategorie

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** Für Drache u. a. `arcane/arcane-beam`, `projectiles/energy-disc`, `explosions/plasma-explosion`; für Stahl u. a. `melee/heavy-cleave`, `melee/hammer-smash`, `impacts/ricochet`, `impacts/hit-spark`
- **Pokémon-Sprache:** Drachenpuls, Drachenklaue, Metallklaue, Eisenschädel und Sternenhieb. **Wichtig:** Es gibt in PixelFX keine vollständigen eigenen Kategorien „Drache“ oder „Stahl“; Palette, Silhouette und Trefferbild müssten wir SoulGold-spezifisch gestalten.

### 14. Explosion, Flächenangriff und Zerstörung

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `explosions/barrel-explosion`, `explosions/big-explosion`, `explosions/cartoon-pow`, `explosions/dirt-explosion`, `explosions/firework-burst`, `explosions/firework-rocket`, `explosions/grenade`, `explosions/implosion`, `explosions/nuke`, `explosions/plasma-explosion`, `explosions/small-explosion`, `explosions/smoke-bomb`
- **Pokémon-Sprache:** Explosion, Finale, Feuersturm, Flächenangriff und klarer Mehrziel-Treffer. Einige Vorlagen (z. B. Bombe/Nuke) sind nur technische Formen und müssen in Stil und Maßstab angepasst werden.

### 15. Status, Verwirrung, Schlaf, Paralyse und Kampfwerte

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `status/bleeding`, `status/burning`, `status/charmed`, `status/confused`, `status/cursed`, `status/frozen`, `status/haste`, `status/petrified`, `status/poisoned`, `status/rage`, `status/sleep`, `status/slowed`, `status/stunned`; zusätzlich `lightning/electrified` und `arcane/spell-charge`
- **Pokémon-Sprache:** Vergiftung, Verbrennung, Paralyse, Schlaf, Verwirrung, Einfrieren, Anziehung, Fluch, Einschüchterung, Schärfer/Fokusenergie und Status-Icons.
- **Nicht direkt vorhanden:** Eine eigene Pokémon-Paralyse-Schock-Animation oder passgenaue Status-Symbole müssen noch gebaut oder aus SoulGold übernommen werden.

### 16. Heilung, Absorption, Schutz und Wiederbelebung

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `holy/blessing`, `holy/divine-shield`, `holy/heal`, `holy/heal-aoe`, `holy/holy-pillar`, `holy/resurrection`, `shadow/life-steal`, `shadow/soul-drain`, `nature/healing-bloom`, `scifi/force-field`
- **Pokémon-Sprache:** Heilung, Genesung, Mondschein, Gigasauger, Erholung, Schutzschild, Reflektor, Lichtschild und Wiederbelebung.

### 17. Wetter, Feld und Arena-Zustände

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `weather/aurora`, `weather/blizzard`, `weather/cherry-blossoms`, `weather/clouds`, `weather/falling-leaves`, `weather/fireflies`, `weather/fog`, `weather/god-rays`, `weather/rain`, `weather/shooting-stars`, `weather/snow`, `weather/storm`; dazu `scifi/laser-grid`, `scifi/force-field` und `nature/quake`
- **Pokémon-Sprache:** Sonnentag, Regentanz, Sandsturm, Hagel/Schneefall, Nebel, Elektro-/Pflanzenfeld und Arena-Auren. PixelFXs Wettervorlagen sind nicht automatisch an Pokémon-Wetterregeln gekoppelt.

## B. Pokémon-Übergänge, Items und Rückmeldung

### 18. Einwechseln, Erscheinen, Ei, Entwicklung, Besiegen und Wiederbeleben

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `spawn/coin-drop`, `spawn/disintegrate`, `spawn/dissolve-burn`, `spawn/egg-hatch`, `spawn/poof`, `spawn/respawn-beam`, `spawn/shatter-death`, `spawn/soul-rise`, `spawn/spawn-portal`, `spawn/summon-rise`; außerdem `arcane/blink-in`, `arcane/blink-out`, `arcane/portal`
- **Pokémon-Sprache:** Pokémon wird in den Kampf geschickt, erscheint/verschwindet, Ei schlüpft, Entwicklung, Besiegen und Wiederbelebung. Der Pokéball selbst braucht ggf. eine eigene Animation.

### 19. Kampf-UI, Volltreffer-/Schadensanzeige und Levelaufstieg

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `ui/achievement`, `ui/coin-collect`, `ui/combo-counter`, `ui/confetti`, `ui/countdown`, `ui/crit-number`, `ui/damage-number`, `ui/exclamation`, `ui/health-bar-hit`, `ui/heart-lost`, `ui/level-up`, `ui/quest-complete`
- **Pokémon-Sprache:** Schadens-/Volltreffer-Rückmeldung, HP-Abzug, Status-/Ausrufezeichen und Levelaufstieg. SoulGold hat bereits eine eigene UI; diese Effekte nur prüfen, wenn sie wirklich zum Spiel passen.

### 20. Items, Beeren, Pokébälle und Belohnungen

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `pickups/chest-open`, `pickups/coin-spin`, `pickups/collect-burst`, `pickups/crystal-shard`, `pickups/gem-spin`, `pickups/heart-pickup`, `pickups/key-glint`, `pickups/loot-beam`, `pickups/potion`, `pickups/power-star`, `pickups/xp-orb`
- **Pokémon-Sprache:** Item gefunden, Beere eingesammelt, Pokéball-/Item-Glanz, EP-/Belohnungsanzeige. Das sind eher Feld-/UI-Effekte als Attacken.

### 21. Bildschirmblenden und Übergänge

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `transitions/blinds`, `transitions/burn-away`, `transitions/crt-off`, `transitions/diamond-wipe`, `transitions/glitch-wipe`, `transitions/iris`, `transitions/pixel-dissolve`, `transitions/shatter-wipe`, `transitions/slash-wipe`, `transitions/star-iris`
- **Pokémon-Sprache:** Kampf beginnt/endet, Teleport, Flucht, Szenenwechsel und Ein-/Ausblenden. Nur Änderungen übernehmen, die SoulGolds GBA-Übergänge sichtbar verbessern.

### 22. Pokémon-/Kreaturenbewegung als Umgebungs- oder Beschwörungseffekt

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `critters/bat`, `critters/bird`, `critters/butterfly`, `critters/eyeball`, `critters/fish-school`, `critters/flying-skull`, `critters/frog`, `critters/ghost`, `critters/jellyfish`, `critters/slime`, `critters/snake`, `critters/wisp`
- **Pokémon-Sprache:** Schwarm, flatternde Flügel, Geist/Wisp oder Beschwörung. **Keine fertigen Pokémon-Sprites**; diese Dateien sind generische Pixelwesen und nicht direkt als Pokémon einsetzbar.

### 23. Sci-Fi- und Raumzeit-Effekte für futuristische Moves/Legendäre

- [ ] v1.2 ansehen · [ ] Kandidat · [ ] integriert
- **PixelFX:** `scifi/emp-blast`, `scifi/energy-core`, `scifi/force-field`, `scifi/glitch`, `scifi/hologram`, `scifi/jetpack`, `scifi/laser-grid`, `scifi/scanner`, `scifi/teleporter-pad`, `scifi/tractor-beam`, `scifi/warp-in`, `scifi/warp-out`
- **Pokémon-Sprache:** Psy-/Raumzeit-/Technoeffekte, Teleport, Barriere und futuristische Legendär-Attacken. Für normale Johto-Attacken ist diese Gruppe nicht automatisch passend.

## C. 12 PixelFX-Angriffsabläufe („Moves“)

Diese sind vollständige kleine Choreografien mit Figur-/Treffer-Timing. Sie sind **keine** Liste echter Pokémon-Attacken und keine Pokémon-Movesets.

- [ ] `moves/arrow-shot` — Geschoss-/Pfeilwurf-Prinzip
- [ ] `moves/dash-strike` — Anlauf und Nahkampftreffer
- [ ] `moves/earth-stomp` — Boden-/Stampfangriff
- [ ] `moves/fireball-throw` — Feuerballwurf
- [ ] `moves/ground-pound` — Sprung/Schlag auf den Boden
- [ ] `moves/holy-smite` — Energie-/Lichtschlag
- [ ] `moves/ice-lance-throw` — Eisgeschoss
- [ ] `moves/lightning-call` — herbeigerufener Blitz
- [ ] `moves/meteor-call` — Meteor/Flächenangriff
- [ ] `moves/pistol-shots` — Mehrfachgeschoss, nur als Timing-Vorlage
- [ ] `moves/rocket-launcher` — schweres Projektil, nur als Timing-Vorlage
- [ ] `moves/sword-combo` — mehrere Nahkampftreffer

## D. SoulGold-Kampfdetails: Rückstoß, Boden und „alles andere“

Diese Fälle sind wichtig, werden von einer Liste hübscher Partikeleffekte aber nicht automatisch abgedeckt. Sie müssen als Bewegungsablauf und Spielzustand separat geprüft werden.

### Rückstoß, Knockback, Zurückschrecken und Recoil

- [ ] Pokémon wird beim Treffer sichtbar weggestoßen.
- [ ] Leichter Treffer, schwerer Treffer und Volltreffer haben unterscheidbares Gewicht.
- [ ] Ziel reagiert in der richtigen Richtung und landet nicht über Kampf-UI oder Arenagrenzen.
- [ ] Trefferstopp/Hit-stop sitzt auf dem Kontaktframe und ist nicht zu lang.
- [ ] Kamerawackeln/Screen-shake ist kurz, lesbar und stört nicht die Status-/HP-Anzeige.
- [ ] Angreifer hat passenden Nachlauf/Recovery statt sofort in die Standpose zu springen.
- [ ] Rückstoß-Schaden wird visuell und zeitlich nicht mit dem gegnerischen Treffer verwechselt.
- [ ] Gegenschlag, Abwehr und Zurückprallen haben eine passende Reaktion.
- **PixelFX-Grundlage:** `moves/dash-strike`, `moves/sword-combo`, `impacts/blunt-hit`, `impacts/crit-hit`, `impacts/heavy-landing`, `impacts/hit-flash`, `impacts/hit-spark`, `impacts/impact-frame`, `impacts/parry`, `impacts/ricochet`, `impacts/shield-block`. Die PixelFX-Act-Daten unterstützen unter anderem Trefferzeitpunkt, Freeze, Shake und Push; das muss an SoulGolds Pokémon-Sprites und Kampfpositionen angepasst werden.

### Ziehen, Fesseln, Festhalten und Statusreaktionen

- [ ] Zug-/Sogbewegung und Zielposition prüfen.
- [ ] Ranken, Fäden, Schatten oder Energie bleiben am richtigen Ziel verankert.
- [ ] Mehrfachtreffer und Befreiung enden sauber; keine Effektreste bleiben im nächsten Zug stehen.
- [ ] Schlaf, Verwirrung, Paralyse, Vergiftung, Verbrennung, Einfrieren und Heilung sind sowohl visuell als auch im Timing eindeutig.
- **PixelFX-Grundlage:** `nature/root-snare`, `nature/vine-whip`, `shadow/grasping-hands`, `shadow/shadow-tendrils` und die `status/*`-Effekte.

### Abdeckung aller übrigen Kampfzustände

- [ ] Verfehlt/Ausweichen · [ ] Immunität/keine Wirkung · [ ] nicht sehr effektiv · [ ] sehr effektiv/Volltreffer.
- [ ] Schutzschild/Barrieren/Reflektor/Lichtschild · [ ] Konter/Abwehr/Abprallen.
- [ ] Laden/Aufladen · [ ] Mehrfachtreffer · [ ] Flächen-/Mehrzieltreffer · [ ] Doppelkämpfe.
- [ ] Wetter/Feldzustand · [ ] Status und Statuswechsel · [ ] Werte erhöhen/senken.
- [ ] Einwechseln/Auswechseln · [ ] Besiegen/Flucht · [ ] Wiederbelebung/Heilung · [ ] Entwicklung/Mega-Form.
- [ ] Animationen laufen korrekt auf Spieler- und Gegenseite sowie bei unterschiedlichen Pokémon-Größen.
- [ ] Jeder Zustand bekommt eine Zuordnung zu SoulGold-Animation, gemeinsamem Animationsskript oder begründetem „keine eigene FX nötig“.

## E. Was PixelFX nicht fertig mitbringt

- [ ] Keine vollständigen Pokémon-Kampfsysteme, Schadensformeln, Movesets oder Trainer-KI.
- [ ] Keine Pokémon-Modelle/Sprites und keine fertigen SoulGold-Charakteranimationen.
- [ ] Keine automatische Zuordnung „Pokémon-Attacke → PixelFX-Effekt“.
- [ ] Keine automatische Konvertierung des PNG-Sprite-Sheets in ein fertiges SoulGold/GBA-Animationsskript.
- [ ] Keine Garantie, dass jede Vorlage in GBA-Speicher-, Farb-, Kachel- und Sprite-Limits passt.
- [ ] Effekte wie Waffen, Sci-Fi, generische Kreaturen oder moderne Glow-Effekte müssen stilistisch geprüft und gegebenenfalls neu gezeichnet werden.

## F. Weitere Animationen im ganzen SoulGold-Spiel

Die 935 Attacken sind nicht das ganze Animationsinventar. Auch diese Bereiche kommen in die Sichtung, damit nicht nur neue Attacken-Effekte hochwertig sind, während der Rest sichtbar zurückfällt.

### Pokémon- und Trainerbewegungen

- [ ] Pokémon-Front-/Rückseiten, Idle-/Angriffs-/Trefferposen und Größenunterschiede.
- [ ] Wanken, Zurückschrecken, Rückstoß, Recoil, Besiegen und Wiederaufstehen.
- [ ] Einwechseln, Pokéball öffnen/schließen, Rückkehr in den Ball und Flucht.
- [ ] Mega-Entwicklung, Formwechsel, Terakristall-/sonstige Spezialformen und Legendär-Boss-Auftritte, sofern SoulGold sie nutzt.
- [ ] Follower-Pokémon: Gehen, Warten, Richtungswechsel, spezielle Formen und Interaktion.
- [ ] Trainer-Sprites: Einblendung, Kampfpose, Wurf-/Pokéball-Übergang und Sieg/Niederlage.

### Arena, Boden und Umgebung

- [ ] Kampfarenen und Hintergründe: Perspektive, Palette, Kontrast und Übergänge.
- [ ] Bodenreaktionen: Staub, Risse, Wellen, Einschlag, Trümmer und verblassende Spuren.
- [ ] Wetter: Regen, Schnee/Blizzard, Sandsturm, Nebel, Sonne und Sturm.
- [ ] Feldzustände/Terrain: Entstehung, aktive Schleife, Wechsel und sauberer Abbau.
- [ ] Entry Hazards: Tarnsteine, Stachler, Giftspitzen und Klebenetz — Position, Treffer-/Statusreaktion und Mehrfachauslösung.
- [ ] Umgebungsanimationen: Wasser, Pflanzen, Feuer, Licht, Schatten und Partikel, soweit sie im Kampf oder in SoulGold-Orten vorkommen.

### Status, Kampf-Feedback und UI

- [ ] Status-Symbole/-Auren für Schlaf, Gift, Verbrennung, Paralyse, Verwirrung, Einfrieren und Heilung.
- [ ] Werte hoch/runter, Fähigkeit aktiviert, Typwirkung, Immunität, Fehlschlag und Volltreffer.
- [ ] HP-Leiste, Schadenszahl, Textbox, Auswahlcursor, Move-Auswahl und Zielanzeige.
- [ ] Kampfstart/-ende, Rundenwechsel, Wechsel, Flucht, Fangversuch, Levelaufstieg und Entwicklung.
- [ ] Menü- und Feldanimationen: Pokédex, Team, Beutel, Boxen, DexNav, Items/Belohnungen und Übergänge.
- [ ] Keine Animation verdeckt wichtige Texte, HP, Ziel oder Eingabehinweise.

### Prüfung außerhalb des Kampfs

- [ ] Overworld-Sprites und NPCs: Laufzyklen, Drehen, Auf-/Absteigen, Surf-/Fly-/Ride-Darstellung.
- [ ] Karten-/Umgebungsdetails: Wasser, Pflanzen, Licht, Wetter, Türen, Teleporter und Ereignis-Animationen.
- [ ] Item-Aufnahme, Beeren, Truhen/Belohnungen, Ei-Schlüpfen, Entwicklung und Szenenübergänge.
- [ ] Statische Grafiken zusätzlich prüfen: Pokémon-Sprites, Follower, Trainer, Tilesets, Battle-Hintergründe, Icons und Menüs.

## G. Gemeinsamer Pixel- und Farbstandard für SoulGold 1.3

**Ziel:** SoulGold bleibt als Spiel erkennbar, übernimmt aber beim Finish den PixelFX-Arbeitsstandard: klare Silhouetten, kontrollierte Farbpaletten, überzeugendes Timing und sichtbare Iteration. Nicht PixelFX' generischen Charakter oder Stil blind kopieren.

- [ ] Alles bei nativer GBA-Größe beurteilen; vergrößerte Vorschau nur mit sauberem Nearest-Neighbor/Pixelraster.
- [ ] Keine Weichzeichner, Anti-Aliasing-Kanten oder ungewollten Zwischenfarben.
- [ ] Farben je Asset als klare, begrenzte Rampen planen: Schatten, Mittelton, Licht, Akzent und Treffer-Highlight.
- [ ] Einheitliche Hue-Logik und Kontrast über Kampf, Pokémon, Trainer, Tilesets, UI und Effekte hinweg.
- [ ] Silhouetten und Fokus zuerst; keine zufälligen Einzelpixel oder detailreiche Effekte, die bei 1x zu Rauschen werden.
- [ ] Glühen/Transparenz nur gezielt und GBA-tauglich umsetzen; weiche PixelFX-Lichtbuffer in klare Palette/Dither übersetzen.
- [ ] Animationen sauber staffeln: Antizipation → Aktion → Kontakt → Trefferreaktion/Hit-stop → Recovery.
- [ ] Keine abgeschnittenen Frames, sprunghaften Positionen, Palette-Flashes, hängenden Partikel oder ungewollten Loops.
- [ ] Pro Kandidat Kontaktbogen und alle Frames ansehen; Animation zusätzlich in Echtzeit bei 1x und vergrößertem Nearest-Neighbor prüfen.
- [ ] Für jede Änderung mindestens drei dokumentierte Render-/Review-/Refine-Runden; Ausnahmen begründen.
- [ ] Prototypen mit vorhandener SoulGold-Grafik und PixelFX-Prototypen nebeneinander vergleichen; übernehmen nur, wenn die Verbesserung bei 1x klar ist.
- [ ] PixelFX-Qualitätsmerkmale als Maßstab verwenden, aber Farben, Umrisse und Timing an SoulGolds eigene Ästhetik anpassen.

## H. Gesamtfortschritt

- [ ] Alle 935 PolishedDex-Move-Einträge gegen SoulGold v1.2 geprüft; Abweichungen zum gepinnten Quellstand dokumentiert.
- [ ] Für jeden einzelnen Move Animationsskript, Effektfamilie, Prüfstatus und Änderungsentscheidung eingetragen.
- [ ] Alle PixelFX-Familien gegen SoulGold-v1.2-Animationsskripte abgeglichen.
- [ ] Jede v1.2-Animation mindestens einem visuellen Effekt oder einer geprüften bestehenden Animation zugeordnet.
- [ ] Breite Szenenabdeckung aus dem v1.2-Teil des YouTube-Walkthroughs erfasst; v1.2.1-Szenen getrennt markiert.
- [ ] Prioritäten nach Häufigkeit, Sichtbarkeit, Qualität und Wiederverwendbarkeit vergeben.
- [ ] PixelFX-Prototypen gerendert und bei GBA-Auflösung visuell geprüft.
- [ ] Ausgewählte Effekte ins SoulGold-v1.2-Projekt konvertiert und eingebaut.
- [ ] Einzel-, Doppel- und Mehrziel-Tests bestanden.
- [ ] Die vollständige ROM bleibt lokal; nur erlaubte Quelldateien, Assets, Dokumentation und Patch-Artefakte werden versioniert.
