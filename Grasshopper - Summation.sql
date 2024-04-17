<<<<<<< HEAD
/*
Summation

Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0. Your function only needs to return the result, what is shown between parentheses in the example below is how you reach that result and it's not part of it, see the sample tests.

For example (Input -> Output):

2 -> 3 (1 + 2)
8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
*/

CREATE OR REPLACE FUNCTION Summation(num INT)
RETURNS INT AS $$
BEGIN
    RETURN (SELECT SUM(i) FROM generate_series(1, num) i);
END; 
$$ LANGUAGE plpgsql;

SELECT n, Summation(n) AS res
FROM kata;
=======
/*
Summation

Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0. Your function only needs to return the result, what is shown between parentheses in the example below is how you reach that result and it's not part of it, see the sample tests.

For example (Input -> Output):

2 -> 3 (1 + 2)
8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
*/

CREATE OR REPLACE FUNCTION Summation(num INT)
RETURNS INT AS $$
BEGIN
    RETURN (SELECT SUM(i) FROM generate_series(1, num) i);
END; 
$$ LANGUAGE plpgsql;

SELECT n, Summation(n) AS res
FROM kata;
>>>>>>> d086ef75f0be1cb7d9459ba2921bf6ae04f37f7a
