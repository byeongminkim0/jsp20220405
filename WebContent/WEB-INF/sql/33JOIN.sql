-- JOIN

USE mydb2;

SELECT * FROM Board; -- 4개열, 12개행
SELECT * FROM Reply; -- 4개열, 4개행

SELECT * FROM Board, Reply; -- 결합(Cartesian Product) : 8개열(4+4) 48개행(12 * 4)
SELECT * FROM Reply, Board;
SELECT * FROM Board JOIN Reply; -- Cartesian Product
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN (주로 사용)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN