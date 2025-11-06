-- TRANSACTION

-- 트랜잭션 시작
START TRANSACTION;

-- INSERT
INSERT INTO employees (`name`, birth, gender, hire_at)
VALUES ('배준길', '1987-04-18', 'M', DATE(NOW()))
;

-- SELECT
SELECT * FROM employees WHERE `name` = '배준길';

-- ROLLBACK
ROLLBACK;

-- COMMIT
COMMIT;




