/*
Write a query to print the company_code,
founder name,
total number of lead managers,
total number of senior managers,
total number of managers,
and total number of employees.

Order your output by ascending company_code.
*/

SELECT C.company_code, C.founder,
  COUNT(DISTINCT LM.lead_manager_code),
  COUNT(DISTINCT SM.senior_manager_code),
  COUNT(DISTINCT M.manager_code),
  COUNT(DISTINCT E.employee_code)

FROM Company as C,
  Lead_Manager as LM,
  Senior_Manager as SM,
  Manager as M,
  Employee as E

WHERE C.company_code = LM.company_code
    AND C.company_code = SM.company_code
    AND C.company_code = M.company_code
    AND C.company_code = E.company_code

GROUP BY C.company_code ASC, C.founder
