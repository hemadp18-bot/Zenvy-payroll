create database Zenvy_Payroll;
use zenvy_payroll
CREATE TABLE Employee_Master (
    Employee_ID VARCHAR(10) PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Department VARCHAR(30),
    Designation VARCHAR(50),
    Employment_Type VARCHAR(20),
    Joining_Date DATE,
    Status VARCHAR(10),
    Manager_Name VARCHAR(50)
);
INSERT INTO Employee_Master VALUES
('E001','Ravi Kumar','IT','Data Analyst','Full-time','2022-01-10','Active','Anita Rao'),
('E002','Meena Sharma','HR','HR Executive','Full-time','2021-06-15','Active','Suresh Patil'),
('E003','Arjun Singh','Finance','Accountant','Full-time','2020-03-12','Active','Neha Jain'),
('E004','Kavya N','Operations','Operations Executive','Contract','2023-02-01','Active','Prakash M'),
('E005','Rohit Verma','IT','Software Engineer','Full-time','2019-11-20','Inactive','Anita Rao'),
('E006','Pooja Iyer','Finance','Payroll Analyst','Full-time','2022-07-18','Active','Neha Jain'),
('E007','Aman Khan','Operations','Supervisor','Full-time','2021-09-25','Active','Prakash M'),
('E008','Sneha Das','HR','Recruiter','Contract','2023-01-05','Active','Suresh Patil'),
('E009','Vikas R','IT','System Admin','Full-time','2020-08-14','Active','Anita Rao'),
('E010','Nithya S','Operations','Field Officer','Contract','2023-03-11','Active','Prakash M'),
('E011','Deepak Joshi','Finance','Finance Executive','Full-time','2021-04-09','Active','Neha Jain'),
('E012','Ayesha Khan','HR','HR Analyst','Full-time','2022-10-01','Active','Suresh Patil');

select *from Employee_Master

CREATE TABLE Attendance (
    Attendance_ID INT identity(1,1) PRIMARY KEY,
    Employee_ID VARCHAR(10),
    Month VARCHAR(7),
    Working_Days INT,
    Present_Days INT,
    Absent_Days INT,
    Overtime_Hours INT,
    FOREIGN KEY (Employee_ID) REFERENCES Employee_Master(Employee_ID)
);


INSERT INTO Attendance 
(Employee_ID,Month,Working_Days,Present_Days,Absent_Days,Overtime_Hours) VALUES
('E001','2024-11',22,22,0,5),
('E002','2024-11',22,20,2,2),
('E003','2024-11',22,21,1,3),
('E004','2024-11',22,18,4,12),
('E005','2024-11',22,0,22,0),
('E006','2024-11',22,22,0,4),
('E007','2024-11',22,19,3,15),
('E008','2024-11',22,17,5,1),
('E009','2024-11',22,22,0,6),
('E010','2024-11',22,16,6,10),
('E011','2024-11',22,21,1,2),
('E012','2024-11',22,0,22,0);
select*from Attendance 
 
 CREATE TABLE Payroll (
    Payroll_ID INT identity(1,1) PRIMARY KEY,
    Employee_ID VARCHAR(10),
    Month VARCHAR(7),
    Basic_Salary INT,
    Allowances INT,
    Deductions INT,
    Overtime_Pay INT,
    Net_Salary INT,
    Payment_Date DATE,
    Bank_Account VARCHAR(20),
    FOREIGN KEY (Employee_ID) REFERENCES Employee_Master(Employee_ID)
);

INSERT INTO Payroll
(Employee_ID,Month,Basic_Salary,Allowances,Deductions,Overtime_Pay,Net_Salary,Payment_Date,Bank_Account) VALUES
('E001','2024-11',45000,5000,2000,2500,50500,'2024-11-30','ACC1001'),
('E002','2024-11',40000,4000,1500,800,43300,'2024-11-30','ACC1002'),
('E003','2024-11',42000,4500,1800,1200,45900,'2024-11-30','ACC1003'),
('E004','2024-11',30000,3000,1000,6000,38000,'2024-11-30','ACC1004'),
('E005','2024-11',50000,6000,2000,0,54000,'2024-11-30','ACC1005'),
('E006','2024-11',46000,5000,1800,2000,51200,'2024-11-30','ACC1006'),
('E007','2024-11',35000,4000,1500,7000,44500,'2024-11-30','ACC1007'),
('E008','2024-11',28000,3000,1000,500,30500,'2024-11-30','ACC1008'),
('E009','2024-11',48000,5500,2000,3000,54500,'2024-11-30','ACC1009'),
('E010','2024-11',26000,2500,800,5000,32700,'2024-11-30','ACC1010'),
('E011','2024-11',43000,4500,1700,900,46700,'2024-11-30','ACC1011'),
('E012','2024-11',39000,4000,1500,0,41500,'2024-11-30','ACC1012');

select*from Payroll