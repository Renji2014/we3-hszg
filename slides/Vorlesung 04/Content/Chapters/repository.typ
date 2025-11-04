#import "../../Template/definitions.typ": *

#slide[
  #toolbox.register-section([Repository])
  = Repository
  #set align(horizon)
  - Schnittstelle zur Datenbank
  - Erlaubt CRUD Operationen auf der Datenbank
  - Daten in der Datenbank werden auf Klassen gemapped (ORM)
  - Jedes Repository kann sich nur um eine Entity kümmern
  - Repository braucht Info über Typ der Entity und Typen der ID

  ```kotlin
  @Repository
  interface TodoItemRepository : JpaReposiroty<TodoItem, Long> {

  }
  ```

  ```java
  @Repository
  public interface TodoItemRepository extends JpaReposiroty<TodoItem, Long> {

  }
  ```
]