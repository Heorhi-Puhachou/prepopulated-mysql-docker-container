# Get unique publishers names with copies
SELECT DISTINCT p.name
FROM publisher p
         JOIN game g on p.publisher_id = g.publisher_id;

# Get copies by publisher
SELECT p.name, SUM(g.copies) sum
FROM publisher p
         JOIN game g on p.publisher_id = g.publisher_id
GROUP BY p.name;

# Get copies by publisher if more than 110 000
SELECT p.name, SUM(g.copies) sum
FROM publisher p
         JOIN game g on p.publisher_id = g.publisher_id
GROUP BY p.name
HAVING sum > 110000;