SELECT a.title, b.ratingCount, b.avgRating
FROM 
movienames a,
(SELECT movieID, COUNT(movieID) AS ratingCount, AVG(rating) AS avgRating 
FROM ratings
GROUP BY movieID) b
WHERE b.ratingCount >= 10
AND   a.movieID = b.movieID
ORDER BY b.avgRating DESC;
