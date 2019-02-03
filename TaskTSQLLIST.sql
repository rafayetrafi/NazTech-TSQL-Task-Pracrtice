USE [BankAccountMNG]
GO


-- Task 1

CREATE proc [dbo].[a_t1_allCustomerName] as
BEGIN

SELECT customer_name FROM customer;

END


-- Task 2

CREATE proc [dbo].[a_t2_allBranchName] as
BEGIN

SELECT DISTINCT branch_name FROM loan;

END


-- Task 3


ALTER PROC [dbo].[a_t4_acNumAccordingToSalaryInput] as
BEGIN

DECLARE @balance INT;

SELECT account_number FROM account WHERE balance > @balance;


END


-- Task 4

ALTER PROC [dbo].[a_t4_acNumAccordingToSalaryInput] as
BEGIN

DECLARE @balance INT;

SELECT account_number FROM account WHERE balance > @balance;


END


-- Task 5

ALTER PROC [dbo].[a_t5_acNum&BalanceFromBringtonAccordingToBalanceInput] as
BEGIN

DECLARE @balance INT;

SELECT account_number, balance FROM account WHERE branch_name = 'Brighton' AND balance > @balance;


END


-- Task 6

ALTER PROC [dbo].[a_t6_bracnchNameAsset&RenameColumnNameOfAssetAsAssetsInThousands] as
BEGIN

DECLARE @balance INT;

SELECT branch_name, (assets/1000) AS 'assets in thousands' FROM branch;


END


-- Task 7

ALTER PROC [dbo].[a_t7_bracnchNameWithAssetBetween1&4M] as
BEGIN

SELECT branch_name FROM branch WHERE assets BETWEEN 1000000 AND 4000000;


END

-- Task 8


ALTER PROC [dbo].[a_t8_customerNameAcNumBalanceAccordingTOAccount] as
BEGIN

SELECT depositor.customer_name, depositor.account_number, account.balance FROM account, depositor WHERE account.account_number = depositor.account_number;


END




-- Task 9


ALTER PROC [dbo].[a_t9_customerNameAcNumBalanceAccordingTOAccount&BalanceInput] as
BEGIN

DECLARE @userInput int;

SELECT depositor.customer_name, depositor.account_number, account.balance FROM account, depositor WHERE account.account_number = depositor.account_number AND balance <= @userInput;


END


