# SoulGold v1.2 Animationsinventar

Dieses CSV ist das verbindliche Zielschema für das Move-Inventar. Der Arbeitsstand ist bewusst **leer**: Es wurden noch keine 935 Move-Einträge aus einer bestätigten Datenquelle importiert oder abgeglichen. Nicht aus Namen oder Effektfamilien raten.

- Geplanter Quellstand: `Eemeliri/soulgold` Tag `v1.2`, Commit `b7d1534e3d120da9df0b03b685a91b655cf87cad`.
- Im Remote-Repository ließ sich `data/battle_anim_scripts.s` unter `v1.2` auffinden; dies bestätigt die Quelldatei, aber nicht die Vollständigkeit des Move-Katalogs oder die Zuordnung aller Moves.
- Jeder Move erhält eine eigene Zeile. Gemeinsame Animationsskripte dürfen in mehreren Zeilen referenziert werden.
- `source_confirmed` und `visual_status` nicht auf „ja/geprüft“ setzen, solange der jeweilige Nachweis fehlt.
- Gewünschter Umfang laut Projektauftrag: 935 externe Move-Einträge. Eine Abweichung zur Quellversion wird einzeln dokumentiert.

## Statuswerte

`unreviewed`, `mapped`, `visually_reviewed`, `candidate`, `integrated`, `tested`, `blocked`, `not_applicable`.

## Spalten

| Feld | Bedeutung |
| --- | --- |
| move_id, move_name | Externe Inventar-ID und Name |
| type, category, target_behavior | Typ, physisch/speziell/status und Zielverhalten |
| source_confirmed, source_path, source_identifier | Abgleich mit gepinntem Spielquellstand |
| source_difference | Fehlend, abweichend oder unklar gegenüber externem Inventar |
| animation_script, effect_family | Tatsächliche Zuordnung im Quellcode, nicht aus Typ erraten |
| visual_status, evidence_reference | Prüfstatus und Version/Quellpfad/Testfall/zulässiger Beleg |
| quality_rating, finding_or_keep_reason | 1–5 mit konkretem Mangel oder begründeter Beibehaltung |
| pixelfx_candidate, integration_status, test_status | Prototyp-/Integrations-/Testentscheidung |
| next_action, notes | Nächster Schritt, Blocker und Kontext |

Die CSV-Datei enthält vorerst nur die Kopfzeile. Die 935 Zeilen werden erst nach Beschaffung einer zulässigen und belastbaren Move-Datenquelle angelegt; leere oder erfundene Platzhalter würden Fortschritt vortäuschen.
