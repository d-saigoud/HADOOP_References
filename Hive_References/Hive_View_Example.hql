DROP VIEW topMovieIDs;

CREATE VIEW topMovieIDs AS 
SELECT movieID, COUNT(movieID) as ratingCount 
FROM ratings
GROUP BY movieID 
ORDER BY ratingCount DESC;

SELECT B.title, A.ratingCount
FROM topMovieIDs A JOIN movienames B ON A.movieID = B.movieID
ORDER BY A.ratingCount DESC;
