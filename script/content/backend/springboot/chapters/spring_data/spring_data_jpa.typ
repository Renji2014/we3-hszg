#import "../../../../../template/definitions.typ": *

Spring Data JPA erlaubt das einfach Implementieren von Repositories, die auf der Java Persistence API basieren. 
Das Ziel ist es dabei die Menge an Boilerplate Code zu verringern und eine Schnelle Erstellung von Repository Interfaces zu ermöglichen. 
Spring soll dabei den Erstellung von allen Aufgaben im Hintergrund übernehmen. @springDataJpaOverview \

Ein beispiel Repository kann dabei wie folgt aussehen:
```java
@Entity
class Person {

  @Id @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;
  private String name;

  // getters and setters omitted for brevity
}

interface PersonRepository extends Repository<Person, Long> {

  Person save(Person person);

  Optional<Person> findById(long id);
}
```

Hier kommt ein einfaches Repository zum Einsatz. 
Je nachdem, wie viele Funktionen benötigt werden, können auch auch komplexere Repositories, wie zum Beispiel `JpaReposiroty` genutzt werden. @springDataJpaGettingStarted

==== Konzepte
Das zentrale Interface hier ist das `Repository`. 
Es benötigt dafür als Argumente eine Domain-Klasse an, die es verwalten soll, zusammen mit dem Typ ihres Identifiers. 
Dieses Interface stellt dabei eine Basis dar. 
Es ist ein "Maker Interface", welches die angegebenen Typen erhalten soll und wird dann oft mit komplexeren Repositories erweitert. \

Ein Beispiel wäre hier das `CRUD Repository`, welches durch `Repository` erweitert wird und es mit mehr Funktionalitäten erweitert.

```java
public interface CrudRepository<T, ID> extends Repository<T, ID> {

  <S extends T> S save(S entity);      

  Optional<T> findById(ID primaryKey); 

  Iterable<T> findAll();               

  long count();                        

  void delete(T entity);               

  boolean existsById(ID primaryKey);   

  // … more functionality omitted.
}
```

Die hier definierten Methoden decken alle CRUD Operationen ab. \
- `save` zum Erstellen und aktualisieren
- `findById`, `findAll`, `count` und `existsById` zum Auslesen von Datenbank
- `delete` zum Löschen

@springDataJpaCoreConcepts

==== Query Methoden Definieren
@springDataJpaDefiningQueryMethods

==== Probleme in Anwendungsfällen und ihre Lösung
@jpaWithSpringBoot
