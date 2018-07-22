#Need to find all universal donors!
SELECT PA_LNAME,PA_FNAME,PA_BLOODTYPE
FROM PATIENT
WHERE PA_BLOODTYPE LIKE '+%'
;


SELECT employee.emp_lname, employee.emp_fname
FROM employee
WHERE employee.emp_id=
(SELECT doctor.emp_id
FROM doctor
WHERE doctor.doc_ad_id IS NULL)
;

SELECT
FROM
WHERE
;

SELECT
FROM
WHERE
;