SELECT NAME
FROM (
        SELECT NAME, ROW_NUMBER() OVER(ORDER BY DATETIME) AS rankNo FROM ANIMAL_INS
    ) a
WHERE a.rankNo = 1;