#import "../../../template/definitions.typ": *

== Prototype <PatternPrototype>
Das Ziel von Prototypes ist es, basierend auf einer existieren Instanz (dem Prototypen), neue Kopien erstellen. \

Es sollte genutzt werden, wenn ein System unabhängig davon sein sollte, wie seine Produkte erstellt, zusammengebaut und representiert werden und:
- Wenn Klassen instantiiert werden sollen, die zur Runtime spezifiert wurden, zum Beispiel durch `dynamic loading`.
- Um zu vermeiden, dass man eine Hierarchie an Factories baut, die die Klassenhierarchie kopieren.
- Wenn Klassen nur eine begrenzte Anzahl an State besitzen können. Es könnte da von Vorteil sein, diese Varianten als Prototype zu definieren.

=== Struktur
#let defaultNode(
  x: int,
  y: int,
  shape: fletcher.shapes,
  name: label,
  content
) = {
  node(
    (x, y),
    name: name,
    fill: gray.lighten(90%),
    stroke: black,
    shape: shape,
  )[
    #content
  ]
}

#figure(
  caption: "Struktur des Prototype-Patterns"
)[
  #diagram(
    node-stroke: 1pt,
    node-inset: 7.5pt,
    defaultNode(x: 0, y: 0, shape: rect, name: <Client>)[
      #table(
        columns: (auto),
        [*Client*],
        [Operation()]
      )
    ],
    defaultNode(x: 0, y: 1, shape: chevron, name: <p>)[
      p = prototype -> Clone()
    ],
    defaultNode(x: 1.5, y: 0, shape: rect, name: <Prototype>)[
      #table(
        columns: (auto),
        [*Prototype*],
        [Clone()]
      )
    ],
    defaultNode(x: 1, y: 1, shape: rect, name: <ConcretePrototype1>)[
      #table(
        columns: (auto),
        [*ConcretePrototype1*],
        [Clone()]
      )
    ],
    defaultNode(x: 1, y: 2, shape: chevron, name: <return1>)[
      return copy of self
    ],
    defaultNode(x: 2, y: 1, shape: rect, name: <ConcretePrototype2>)[
      #table(
        columns: (auto),
        [*ConcretePrototype2*],
        [Clone()]
      )
    ],
    defaultNode(x: 2, y: 2, shape: chevron, name: <return2>)[
      return copy of self
    ],
    edge(<Client>, "O--", <p>, stroke: 1pt),
    edge(<Client>, "-|>", <Prototype>, stroke: 1pt),
    edge(<Prototype>, "-", <ConcretePrototype1>, stroke: 1pt),
    edge(<Prototype>, "-", <ConcretePrototype2>, stroke: 1pt),
    edge(<ConcretePrototype1>, "O--", <return1>, stroke: 1pt),
    edge(<ConcretePrototype2>, "O--", <return2>, stroke: 1pt),
  )
]

- *Prototype*: Deklariert ein Interface, damit es kopiert werden kann. 
- *ConcretePrototype*: Implementiert eine Operation, damit es sich selbst kopieren kann. 
- *Client*: Erstellt ein neues Objekt, indem der Prototype gefragt wird, ob er eine neue Kopie von sich selbst erstellen kann.

@designPatternsPrototype
