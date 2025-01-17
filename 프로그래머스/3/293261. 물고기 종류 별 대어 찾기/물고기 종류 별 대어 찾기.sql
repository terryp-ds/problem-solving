-- 코드를 작성해주세요
WITH T AS (
    SELECT ID, FISH_TYPE, LENGTH, ROW_NUMBER() OVER (
        PARTITION BY FISH_TYPE ORDER BY LENGTH DESC
    ) AS RN
    FROM FISH_INFO
)

SELECT T.ID, A.FISH_NAME, T.LENGTH
FROM T JOIN FISH_NAME_INFO A ON T.FISH_TYPE=A.FISH_TYPE
WHERE RN = 1
ORDER BY T.ID
;
