-- INSERT 문
-- 신규 데이터를 저장하기 위해 사용하는 문법
INSERT INTO employees (
	`name`
	,birth
	,gender
	,hire_at
	,fire_at
	,sup_id
	,created_at
	,updated_at
	,deleted_at
)
VALUES (
	'배준길'
	,'1987-04-18'
	,'M'
	,'2025-10-31'
	,NULL
	,NULL
	,NOW()
	,NOW()
	,NULL
);

SELECT *
FROM employees
WHERE
	`name` = '배준길'
	AND birth = '1987-04-18'
	AND hire_at = '2025-10-31'
;

-- 자신의 연봉 데이터를 넣어주세요.
INSERT INTO salaries (
	emp_id
	,salary
	,start_at
)
VALUES (
	100005
	,30000000
	,NOW()
);

-- SELECT INSERT
INSERT INTO salaries (
	emp_id
	,salary
	,start_at
)
SELECT
	emp_id
	,30000000
	,created_at
FROM employees
WHERE
	`name` = '배준길'
	AND birth = '1987-04-18'
	AND hire_at = '2025-10-31'
;





