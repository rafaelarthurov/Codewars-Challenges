-- Create your SELECT statement here

SELECT people.id, people.name, COUNT(toys.id) AS toy_count 
FROM people
INNER JOIN toys 
ON people.id = toys.people_id
GROUP BY people.id