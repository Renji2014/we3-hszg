#import "../../Template/definitions.typ": *
#import "../../Components/chapter_titile_slide.typ": chapter-title-slide

#chapter-title-slide(
  section-name: [Prüfung],
  title-text: "Prüfung"
)

#slide[
  = Prüfung
  #set align(horizon)
  Zwei Bestandteile:
  1. Präsentation zum Projekt
  - ca. 20 Minuten
  - Demonstration des Projekts
  - Use Cases
  - Bestandteile der Implementation
  2. Belegarbeit
  - 10 - 15 Seiten
  - Einleitung, Machbarkeit, Anforderungsanalyse, Technologie Diskussion, Entwurf des Systems, Implementierung, Software Tests, Ausblick, Fazit
]

#slide[
  = Prüfung
  == Terminvorschlag
  #set align(horizon)

  - Präsentation: 28.01 & 30.01.2026 (letzter Freitag vor dem Prüfungszeitraum)
  - Belegabgabe: 22.02.2026 (letzer Tag des Prüfungszeitraums)
]

#slide[
  = Prüfung
  == Präsentationszeiten
  #set align(horizon + center)
  #toolbox.side-by-side()[
    Mittwoch \ 28.01.2026
    #set text(size: 15pt)
    #table(
      columns: (1.5fr, 0.5fr),
      align: center,
      [], [12:00 Uhr],
      [], [12:20 Uhr],
      [], [12:40 Uhr],
      [], [13:00 Uhr],
      [], [13:20 Uhr],
      [], [13:40 Uhr],
      [], [14:00 Uhr],
      [], [14:20 Uhr],
      [], [14:40 Uhr],
      [], [15:00 Uhr],
      [], [15:20 Uhr],
      [], [15:40 Uhr],
    )
  ][
    Freitag \ 30.01.2026
    #set text(size: 15pt)
    #table(
      columns: (1.5fr, 0.5fr),
      align: center,
      [],[10:00 Uhr],
      [],[10:20 Uhr],
      [],[10:40 Uhr],
      [],[11:00 Uhr],
      [],[11:20 Uhr],
      table.cell(fill: gray)[*Mensa*], table.cell(fill: gray)[11:40 Uhr],
      [], [12:00 Uhr],
      [], [12:20 Uhr],
      [], [12:40 Uhr],
      [], [13:00 Uhr],
      [], [13:20 Uhr],
      [], [13:40 Uhr],
    )
  ]
  
]
