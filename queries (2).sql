-- Total Loan Applications
SELECT COUNT(*) AS total_applications
FROM bank_loan_data;

-- Approved Loans
SELECT COUNT(*) AS approved_loans
FROM bank_loan_data
WHERE loan_status = 'Approved';

-- Rejected Loans
SELECT COUNT(*) AS rejected_loans
FROM bank_loan_data
WHERE loan_status = 'Rejected';

-- Average Income
SELECT AVG(applicant_income) AS avg_income
FROM bank_loan_data;

-- State-wise Loan Applications
SELECT state, COUNT(*) AS applications
FROM bank_loan_data
GROUP BY state
ORDER BY applications DESC;

-- Loan Purpose Analysis
SELECT loan_purpose, COUNT(*) AS total
FROM bank_loan_data
GROUP BY loan_purpose
ORDER BY total DESC;

-- High Risk Customers
SELECT *
FROM bank_loan_data
WHERE credit_score < 600;

-- Average Loan Amount by Employment Type
SELECT employment_type,
AVG(loan_amount) AS avg_loan
FROM bank_loan_data
GROUP BY employment_type;
