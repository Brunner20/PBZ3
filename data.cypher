create (book: class{name: "Книга"}),
(genre: class{name: "Жанр"}),
(writer: class{name: "Писатель"}),
(sanderson: mynode {name :"Брэндон Сандерсон"}),
(jordan: mynode {name :"Роберт Джордан"}),
(hobb: mynode {name :"Робин Хобб"}),
(way: node{name: "Путь королей"}),
(mistborn: node{name: "Рождённый туманом"}),
(eye: node {name :"Око мира"}),
(hunt: node {name :"Великая Охота"}),
(royal: node {name :"Королевский убийца"}),
(fate: node {name :"Судьба убийцы"}),
(fantasy: gen{name: "Фэнтези"}),
(drama: gen{name: "Драма"}),
(adventure: gen {name :"Приключения"}),
(way)-[:represent{name:"Представяет"}]->(fantasy)<-[:is{name:"это"}]-(genre),
(mistborn)-[:represent{name:"Представяет"}]->(fantasy),
(eye)-[:represent{name:"Представяет"}]->(adventure)<-[:is{name:"это"}]-(genre),
(eye)-[:represent{name:"Представяет"}]->(fantasy),
(hunt)-[:represent{name:"Представяет"}]->(adventure),
(hunt)-[:represent{name:"Представяет"}]->(fantasy),
(royal)-[:represent{name:"Представяет"}]->(fantasy),
(royal)-[:represent{name:"Представяет"}]->(drama),
(fate)-[:represent{name:"Представяет"}]->(fantasy),
(fate)-[:represent{name:"Представяет"}]->(drama),
(fate)-[:represent{name:"Представяет"}]->(adventure),
(way)<-[:author{name : "Автор"}]-(sanderson)-[:is{name:"это"}]->(writer),
(mistborn)<-[:author{name : "Автор"}]-(sanderson),
(eye)<-[:author{name : "Автор"}]-(jordan)-[:is{name:"это"}]->(writer),
(hunt)<-[:author{name : "Автор"}]-(jordan),
(royal)<-[:author{name : "Автор"}]-(hobb)-[:is{name:"это"}]->(writer),
(fate)<-[:author{name : "Автор"}]-(hobb)