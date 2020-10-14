1.Найти всех писателей
match (n)-[:is]-(m:mynode) return n, m

2.Найти общее количество книг
match (n:node)   return count(n)

3.Найти писателя по имени Брэндон Сандерсон
match (n) where n.name="Брэндон Сандерсон"  return n

4.найти все книги в жанре Драма
match (n)-[:represent]->(m) where m.name="Драма" return n

5.Найти количество книг Робин Хобб
match (n)-[:author]->(m) where  n.name="Робин Хобб"  return count(n)

6.Найти автора "Око мира"
match (n)-[:author]->(m) where m.name="Око мира" return n

7.найти количество книг жанра Драма
match (n)-[:represent]->(m) where  m.name="Драма" return count(n)

8.Найти писателей жанра Приключения
match (n)-[:author]->(m)-[:represent]->(genre)where genre.name ="Приключения"  return n

9.найти все фентези книги не Брендона Сандресона
match (n)-[:author]->(m)-[:represent]->(genre) where genre.name ="Фэнтези" and not  n.name="Брэндон Сандресон"  return m

10.Найти все книги приключения Роберта Джордана
match (n)-[:author]->(m)-[:represent]->(genre) where genre.name ="Приключения"and n.name="Роберт Джордан"  return m
