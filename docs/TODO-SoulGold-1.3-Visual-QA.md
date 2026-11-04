# Agentenauftrag — SoulGold 1.2 visuell prüfen und 1.3 entwickeln

**Dokumenttyp:** Ausführbarer Arbeitsauftrag für nachfolgende Coding-/Art-Agents.
**Projektziel:** SoulGold v1.2 vollständig visuell auditieren und die Qualität über das gesamte Spiel hinweg auf einen konsistenten, hochwertigen Pixel-Art-Standard heben.
**Fokus:** SoulGold selbst. Emerald ist ausschließlich technische Basis.
**Projektmodus:** Folge den Phasen der Reihe nach. Das ist ein To-do-/Ausführungsauftrag, keine Vorhersage darüber, wie das Projekt verlaufen wird.

## 0. Rolle und verbindliche Arbeitsregeln

Du arbeitest als Projektleiter-Agent. Führe Aufgaben aus, erstelle prüfbare Ergebnisse und dokumentiere offene Punkte. Verwende klare Befehle und Statusangaben; formuliere keine Vermutungen als festgestellte Fehler.

1. Arbeite ausschließlich an der aktiven Projekt-Branch. Prüfe `git status` vor und nach Änderungen.
2. Prüfe zuerst, welche Dateien und Quellen tatsächlich verfügbar sind. Behaupte nicht, eine ROM gestartet, ein Video vollständig geprüft oder eine Animation gesehen zu haben, wenn du es nicht getan hast.
3. Belege jede visuelle Bewertung mit Spielversion und Quelle: Video-Zeitstempel, Screenshot/Frame, Quellpfad oder reproduzierbare Testschritte.
4. Behandle PolishedDex' 935 Moves als vollständigen vereinbarten Prüfumfang. Lasse keinen Move aus. Gleiche die Liste mit dem festgelegten SoulGold-v1.2-Quellstand ab und dokumentiere jede Differenz, statt stillschweigend Einträge zu entfernen.
5. Verwalte **jeden Move einzeln**. Wenn mehrere Moves ein Animationsskript teilen, entwickle den gemeinsamen Effekt effizient einmal; verknüpfe und prüfe trotzdem jeden betroffenen Move einzeln.
6. Prüfe nicht nur Attacken. Erfasse sämtliche sichtbaren Animationen und die statische Pixel-/Farbqualität des ganzen Spiels.
7. Verwende PixelFX als Qualitäts- und Entwicklungswerkzeug. Kopiere nicht blind dessen generischen Stil: Erhalte SoulGolds Identität und hebe Pixelklarheit, Farbe, Timing und Finish auf ein konsistentes Niveau.
8. Veröffentliche oder committe keine vollständigen ROMs oder Saves. Halte sie lokal und nicht versioniert. Liefere – soweit zulässig – Quelländerungen, Dokumentation und einen Patch.
9. Wenn Basisversion, Quelle oder Testergebnis unklar sind, markiere den Punkt als **BLOCKIERT** und nenne konkret, was fehlt. Rate nicht.

## 1. Festgelegte Quellen und Referenzen

- **Move-Inventar:** [SoulGold Moves auf PolishedDex](https://www.polisheddex.app/soulgold/moves). Die Seite meldet 935 Moves. Erfasse jeden Eintrag mit Prüf- und Änderungsstatus. Gleiche den Datenstand mit der v1.2-Quelle ab und dokumentiere Abweichungen.
- **SoulGold-Quelle:** [Eemeliri/soulgold, Tag `v1.2`](https://github.com/Eemeliri/soulgold/tree/v1.2), Commit `b7d1534e3d120da9df0b03b685a91b655cf87cad`.
- **Animationsskripte:** [`data/battle_anim_scripts.s` im v1.2-Quellstand](https://github.com/Eemeliri/soulgold/blob/v1.2/data/battle_anim_scripts.s).
- **Breite Spielszenen:** [Pokémon Soul Gold – Full Game Walkthrough & Post-Game](https://www.youtube.com/watch?v=YyciNYYADpY), 3:38:16. Laut Beschreibung: bis zur Ruhmeshalle v1.2, danach v1.2.1. Erfasse Version und Zeitstempel für jeden verwendeten Ausschnitt; behandle v1.2.1 nur als getrennte Vergleichsquelle.
- **PixelFX-Katalog und Anleitung:** [`sources/pixelfx/docs/CATALOG.md`](../sources/pixelfx/docs/CATALOG.md), [`AUTHORING.md`](../sources/pixelfx/docs/AUTHORING.md) und [Agent-Skill](../.agents/skills/pixelfx/SKILL.md).
- **PixelFX-Bestand:** 244 Effektmodule in 21 Kategorien. Nutze die vollständige [SoulGold-1.2-PixelFX-Effekt-Checkliste](SoulGold-1.2-PixelFX-Effekt-Checkliste.md) als Inventar; prüfe bei jedem Modul seine konkrete SoulGold-Passung.
- **Optionaler externer Finish-Referenzpunkt:** [Pokémon Unbound](https://www.pokecommunity.com/threads/pok%C3%A9mon-unbound-completed.382178/). Vergleiche ausschließlich Lesbarkeit, Timing, Komposition und Finish. Übernimm keine fremden Grafiken.

## Phase 1 — Arbeitsbasis verifizieren

Führe diese Schritte aus, bevor du Assets änderst:

- [ ] Prüfe Branch, Working Tree, Submodule und tatsächliche Dateien.
- [ ] Verifiziere ROM-/Patch-Version anhand belastbarer Metadaten/Prüfsummen. Ein Dateiname genügt nicht.
- [ ] Verifiziere, ob der lokale Quellstand exakt SoulGold v1.2 ist. Pinne den Quellstand auf den oben genannten Tag/Commit; aktualisiere nicht ungefragt auf `master` oder v1.2.1.
- [ ] Gleiche PolishedDex' 935 Moves mit den Move-IDs im v1.2-Quellstand ab. Erstelle eine Differenzliste. Behalte alle 935 als Arbeitsumfang; markiere nicht bestätigte/abweichende Einträge zur Klärung.
- [ ] Prüfe Build-Tools, GBA-Asset-Konvertierung und verfügbare Emulator-/Hardwaretests. Dokumentiere, was wirklich ausführbar ist.
- [ ] Prüfe Ignore-Regeln. Sorge dafür, dass ROMs und Saves lokal bleiben und nicht versehentlich getrackt werden.

**Gate 1:** Fahre erst mit Änderungen fort, wenn Spielversion und bearbeitbarer SoulGold-Quellstand benannt sind. Sind sie nicht verfügbar, liefere einen Blockerbericht und setze die statische Inventur fort.

## Phase 2 — Vollständiges Move- und Animationsinventar anlegen

Erstelle `docs/soulgold-v1.2-animation-inventory.csv` (oder eine gleichwertige strukturierte Datei). Lege für **jeden der 935 PolishedDex-Einträge genau eine Zeile** an.

Pflege pro Move mindestens diese Felder:

- Move-ID, Move-Name, Typ, Kategorie, Ziel-/Mehrzielverhalten
- Im v1.2-Quellcode bestätigt: ja/nein; Quellpfad/ID; Abweichung zum PolishedDex-Eintrag
- SoulGold-Animationsskript/Effekt-ID und gemeinsame Effektfamilie
- YouTube-/Testnachweis: Version, Zeitstempel, Sichtung abgeschlossen ja/nein
- Qualitätsurteil bei nativer GBA-Größe; konkreter Mangel oder „beibehalten“ mit Begründung
- PixelFX-Kandidat/Prototyp, Integrationsstatus, Teststatus und nächste Aktion

Arbeite dabei so:

- [ ] Ordne alle 935 Moves einzeln einem Skript/einer Familie zu oder markiere sie ausdrücklich als ungeklärt.
- [ ] Lies die tatsächliche v1.2-Animationszuordnung aus dem SoulGold-Quellcode. Leite sie nicht allein aus Typ, Stärke oder Textbeschreibung ab.
- [ ] Gruppiere gemeinsame Skripte, damit Effekte wiederverwendbar verbessert werden können; entferne aber keine Move-Zeilen.
- [ ] Kennzeichne Unique-/Signature-Moves, SoulGold-spezifische Effekte, Formwechsel und Moves mit eigener Ressource.
- [ ] Prüfe sowohl häufige als auch seltene, Status-, Feld-, Mehrfach-, Mehrziel- und Ladeattacken.
- [ ] Erzeuge Abdeckungszahlen für: Move-Zeilen angelegt, zugeordnet, visuell geprüft, verbessert, integriert und getestet.

**Gate 2:** Kein Move gilt als erledigt, wenn nur seine Familie geprüft wurde. Der Move selbst braucht eine Zuordnung und einen dokumentierten Status.

## Phase 3 — Alle übrigen visuellen Inhalte inventarisieren

Erstelle zusätzlich eine Asset-/Animationsinventur für das ganze Spiel. Verwende die Checkliste und erfasse mindestens:

- [ ] Pokémon-Angriffs-, Idle-, Treffer-, Wank-, Knockback-, Recoil-, Besiegt- und Wiederaufsteh-Posen
- [ ] Trainerposen, Wurfbewegungen und Sieg-/Niederlage-Reaktionen
- [ ] Einwechseln, Rückkehr in den Pokéball, Pokéball-Öffnen, Fangversuch, Flucht und Kampfstart/-ende
- [ ] Mega-Entwicklung, Formwechsel, spezielle Legendär-/Bossauftritte und Entwicklung
- [ ] Boden-/Gesteinseffekte, Staub, Risse, Schockwellen, Einschlag, Trümmer und Entry Hazards
- [ ] Wetter, Terrain, länger anhaltende Felder, Barrieren, Schutz, Status, Heilung und Werteveränderungen
- [ ] Follower-Pokémon, NPCs, Overworld-Laufzyklen, Surf/Fly/Ride, Karten-/Ereignis- und Umgebungsanimationen
- [ ] Battle-UI, HP-Leisten, Textboxen, Schadens-/Volltrefferanzeige, Cursor, Menüs, Pokédex, Team, Beutel, Boxen und DexNav
- [ ] Übergänge, Blenden, Teleport, Szenenwechsel, Itemaufnahme, Beeren, Ei-Schlüpfen und Belohnungen
- [ ] Statische Pixelgrafik: Pokémon-/Trainer-Sprites, Follower, Battle-Hintergründe, Tilesets, Icons, Menüs und Paletten

Markiere jede Zeile als `ungeprüft`, `gesichtet`, `Mangel belegt`, `beibehalten`, `in Bearbeitung`, `integriert`, `getestet` oder `blockiert`.

## Phase 4 — Walkthrough und visuelle Prüfung durchführen

- [ ] Sichte den Walkthrough kapitelweise. Nutze die Szenenanker unten, aber notiere tatsächlich sichtbare Moves und Effekte.
- [ ] Trenne v1.2-Aufnahmen bis zur Ruhmeshalle von den danach gezeigten v1.2.1-Aufnahmen.
- [ ] Erfasse Kämpfe aus früher und später Story, Rivalen/Arenen, Team-Rocket-Szenen, Einrichtungen, Doppelkämpfen, Bossen und Mega-/Spezialformen.
- [ ] Sichte so breit, dass unterschiedliche Moves, Pokémon-Silhouetten, Größen, Bildschirmseiten, Ziele und Umgebungen vorkommen. Verwende nicht nur zwei Pokémon als Testbasis.
- [ ] Fertige bei Bedarf reproduzierbare Einzelaufnahmen im passenden v1.2-Build an. Prüfe dafür, dass Emulator/Build-Version dokumentiert ist.
- [ ] Bewerte keine Bewegung, die in den verfügbaren Frames nicht zu sehen ist. Markiere fehlendes Videomaterial als offen und beschaffe einen geeigneten Testfall.

### Szenenanker aus der Videobeschreibung

Zeitpunkte sind Suchanker, keine Behauptung, dass dort ein bestimmter Move vorkommt.

- v1.2-Abschnitt: Spielstart bis Ruhmeshalle, ungefähr `00:00–2:29:58`.
- Frühe Rivalenkämpfe: `03:53`, `08:21`; Arenakämpfe u. a. `18:00`, `34:01`, `45:12`, `1:10:56`, `1:17:43`, `1:20:42`, `2:10:12`.
- Team-Rocket-/Storykämpfe: ungefähr `1:43:05–1:57:12`.
- Ab Ruhmeshalle/Postgame ungefähr `2:29:58`: als v1.2.1 trennen.
- Einrichtungen/Legendäre u. a. `2:31:18–2:45:15`; Rayquaza/Mega-Rayquaza u. a. `3:26:13–3:34:58`.

## Phase 5 — Qualitätsstandard für Pixel, Farben und Animationen anwenden

Bewerte jedes relevante Asset und jede Animation von 1 (schwach) bis 5 (sehr gut). Belege das Urteil mit Bild/Clip, Version und Quell-/Move-ID.

Prüfe verbindlich:

- [ ] **Native Lesbarkeit:** Form, Richtung, Trefferpunkt und Ziel sind bei GBA-Größe sofort erkennbar.
- [ ] **Pixelraster:** Keine ungewollte Unschärfe, Anti-Aliasing-Kanten oder zufälligen Zwischenpixel.
- [ ] **Silhouette und Form:** Klare Hauptform; Details unterstützen den Fokus und werden bei 1x nicht zu Rauschen.
- [ ] **Farbpalette:** Kontrollierte Schatten-/Mittelton-/Licht-/Akzentrampen; konsistente Hue-Logik über Sprite, Hintergrund, UI und Effekt.
- [ ] **Kontrast:** Pokémon und Attackeneffekt trennen sich vom Hintergrund, ohne UI oder Ziele zu überdecken.
- [ ] **SoulGold-Kohärenz:** Neue Grafiken passen zu SoulGold; PixelFX-Qualität übernehmen, PixelFX-Stil nicht blind kopieren.
- [ ] **Bewegungsbogen:** Antizipation → Aktion → Kontakt → Hit-stop/Trefferreaktion → Recovery. Kein „Sticker-Effekt“ ohne passende Spielreaktion.
- [ ] **Timing/Frames:** Saubere Beschleunigung, Nachlauf und Abblende; keine abgeschnittenen Frames, hängenbleibenden Partikel oder ungewollten Loop-Reste.
- [ ] **GBA-Eignung:** Farben, Transparenz/Dithering, Kacheln, Sprite-/OAM- und Animationsbudget prüfen.
- [ ] **Gesamtkonsistenz:** Neue und bestehende Assets nebeneinander bei 1x und mit Nearest-Neighbor-Vergrößerung vergleichen.

Erkläre jeden Mangel konkret, zum Beispiel: „Trefferpunkt bei 1x unlesbar“, „Palette kollidiert mit HP-Leiste“ oder „Ziel reagiert nicht auf den sichtbaren Aufprall“. Verwende nicht nur Werturteile wie „sieht schlecht aus“.

## Phase 6 — Verbesserungen mit PixelFX planen und erstellen

- [ ] Durchsuche zuerst die 244 PixelFX-Effektmodule und prüfe, ob ein passender Effekt bereits existiert.
- [ ] Wähle 3–5 repräsentative Fälle, um den SoulGold-1.3-Farb-/Pixel-/Timingstandard festzulegen. Nutze sie als Stil-Prototypen, nicht als Endumfang.
- [ ] Rolle den bestätigten Standard auf alle priorisierten Mängel, Animationsfamilien und einzigartigen Ausnahmen aus. Beende die Arbeit nicht nach den ersten Prototypen.
- [ ] Entwickle für gemeinsame Animationsskripte wiederverwendbare Effekte; weise sie allen betroffenen Move-Zeilen zu und teste die Einzelmoves/Edge Cases.
- [ ] Erstelle pro Prototyp eine Art Direction (Silhouette, Palette, Bewegung, Dauer, Trefferbild und SoulGold-Bezug).
- [ ] Rendere Entwürfe, sieh Kontaktbogen und alle Frames durch, prüfe Bewegung in Echtzeit und verbessere jeweils das größte konkrete Problem.
- [ ] Führe mindestens drei dokumentierte Render-/Review-/Refine-Runden pro neuem Effekt durch. Wenn ein vorhandener Effekt unverändert bleibt, begründe das mit Prüfung.
- [ ] Übernimm nur Effekte, die bei nativer Größe nachweisbar besser lesbar und stilistisch passend sind.

## Phase 7 — In SoulGold/GBA integrieren

- [ ] Konvertiere ausgewählte PixelFX-Ausgaben in SoulGold-/GBA-taugliche Grafiken, Paletten, Kacheln und Frames.
- [ ] Binde jedes neue Asset in das korrekte SoulGold-Animationsskript bzw. die zugehörige Animationsfamilie ein.
- [ ] Prüfe Zeitpunkt, Position, Spiegelung, Zieltyp, Spieler-/Gegnerseite, Mehrzielverhalten, UI-Überdeckung und sauberes Ende.
- [ ] Prüfe GBA-Limits für Farben/Paletten, Kacheln, Sprites/OAM und gleichzeitige Effekte.
- [ ] Baue den ROM-Testbuild und protokolliere Version, Build-Befehl und Prüfsumme; speichere die vollständige ROM nicht im Git.

## Phase 8 — Regression und Abnahme

- [ ] Prüfe jeden Move-Eintrag einzeln: richtige Animation, Version, Mapping, Entscheidung und Teststatus vorhanden.
- [ ] Teste jede gemeinsame Effektfamilie mindestens einmal pro relevantem Sonderfall; teste Moves mit eigener Animation separat.
- [ ] Teste Spieler- und Gegnerseite, unterschiedliche Pokémon-Größen, Einzel-/Doppelkampf, mehrere Ziele, Mehrfachtreffer und Bosskämpfe.
- [ ] Teste alle inventarisierten Nicht-Move-Animationen und statischen Grafikgruppen.
- [ ] Prüfe Speichern/Laden, Statuswechsel, Wechsel/Einwechseln und Kampfende, wenn die Änderung diese Bereiche berührt.
- [ ] Erstelle Vorher-/Nachher-Frames oder Clips mit reproduzierbarem Testfall.
- [ ] Dokumentiere bekannte Grenzen und begründete Ausnahmen; markiere offene Punkte als offen, nicht als erledigt.
- [ ] Liefere Patch, Changelog und dokumentierte Patch-Basis, aber keine vollständige ROM.

## Abnahmekriterien

Schließe den Auftrag erst ab, wenn alle Punkte erfüllt oder als konkreter Blocker dokumentiert sind:

- [ ] Alle 935 PolishedDex-Move-Einträge haben eine eigene Zeile, SoulGold-Zuordnung, Teststatus und Änderungsentscheidung.
- [ ] Differenzen zwischen PolishedDex und SoulGold-v1.2-Quelldaten sind erklärt; kein Move wurde stillschweigend weggelassen.
- [ ] Alle Animationsfamilien, einzigartigen Effekte und sonstigen sichtbaren Animationstypen sind bewertet.
- [ ] Alle relevanten statischen Pixel-/Farbgruppen sind geprüft.
- [ ] Alle bestätigten Mängel sind behoben oder mit verständlicher, prüfbarer Begründung beibehalten.
- [ ] Pixel, Farbe, Timing und Kontrast folgen einem gemeinsamen SoulGold-1.3-Standard auf PixelFX-Niveau.
- [ ] Änderungen sind im SoulGold-Build integriert und getestet; sie liegen nicht nur als externe PixelFX-PNGs vor.
- [ ] Keine vollständige ROM oder kein Save wurde ins Git aufgenommen.
- [ ] README/Änderungsprotokoll und Patch-Anleitung nennen Version, Basis und Tests.

## Bericht an Projektleitung

Melde nach jeder Phase knapp:

1. Was geprüft/gebaut wurde.
2. Welche Dateien geändert oder erstellt wurden.
3. Abdeckung: Move-Zeilen und Animationstypen erledigt/offen/blockiert.
4. Gefundene visuelle Mängel mit Evidenz und Priorität.
5. Tests, Build und Ergebnis.
6. Was als Nächstes dran ist und welcher konkrete Blocker besteht.
