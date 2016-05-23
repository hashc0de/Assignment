CREATE TABLE votes ( name CHAR(10), votes INT );

INSERT INTO votes VALUES
 ('Smith',10), ('Jones',15), ('White',20), ('Black',40), ('Green',50), ('Brown',20);


SELECT    v.name,
          v.votes,
          @curRank := @curRank + 1 AS rank
FROM      votes v, (SELECT @curRank := 0) r
ORDER BY  votes;