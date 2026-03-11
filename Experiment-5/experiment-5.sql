CREATE TABLE workers(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    emp_sal INT
);

INSERT INTO workers VALUES(10, 'Jackob', 12000);
INSERT INTO workers VALUES(6, 'Pritam', 15675);
INSERT INTO workers VALUES(7, 'Sharma', 13000);
INSERT INTO workers VALUES(8, 'Verma', 20001);
INSERT INTO workers VALUES(9, 'Tilak', 15000);


SELECT * ,
CASE
WHEN emp_sal%2 = 0 THEN 'Even Salary'
ELSE 'Odd Salary'
END AS salary_type
FROM workers;
