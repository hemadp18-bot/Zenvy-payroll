# ZENVY – HR & Payroll Intelligence Dashboard

### Dashboard Type : Power BI Desktop  
(This project can be published to Power BI Service if required)

---

## Problem Statement

This dashboard helps HR and management teams understand *payroll efficiency, attendance behavior, and payroll risks* within an organization.

Through this dashboard, stakeholders can:
- Monitor total payroll cost and average salary
- Identify *ghost employees* (salary paid with zero attendance)
- Detect *salary leakage*
- Analyze *overtime abuse*
- Evaluate *attendance impact on payroll*
- Drill down to *employee-level payroll details*

By using this dashboard, organizations can improve *payroll accuracy, strengthen **internal controls, and reduce **unnecessary payroll expenses*.

---

## Steps Followed

- *Step 1:* Created a synthetic HR & Payroll dataset using *SQL and Excel*.
- *Step 2:* Loaded the data into *Power BI Desktop*.
- *Step 3:* Opened *Power Query Editor* and enabled:
  - Column distribution
  - Column quality
  - Column profile  
  (Profiling was set to use the entire dataset.)
- *Step 4:* Verified data types and handled null values where applicable.
- *Step 5:* Attendance data was validated to ensure working days, present days, and overtime hours were logically consistent.
- *Step 6:* Relationships were created between:
  - Employee Master
  - Attendance
  - Payroll
- *Step 7:* Calculated columns and measures were created using *DAX*.
- *Step 8:* KPI cards were added for key payroll metrics.
- *Step 9:* Visuals such as bar charts, line charts, area charts, pie charts, funnel charts, and tables were added.
- *Step 10:* Filters (slicers) were added for:
  - Department
  - Month
  - Employee
- *Step 11:* Drill-through functionality was enabled for employee-level analysis.
- *Step 12:* A second page was created for *detailed employee payroll insights*.
- *Step 13:* Formatting, titles, and layout were finalized for executive readability.

---

## Data Source

The dataset used in this project is a *self-created (synthetic) dataset*.

- Data was created using *SQL and Excel*
- Designed to simulate a *real-world HR & Payroll system*
- No real company or employee data was used

### Tables Used
- *Employee Master*
  - Employee ID
  - Employee Name
  - Department
  - Employment Status
- *Attendance*
  - Working Days
  - Present Days
  - Absent Days
  - Overtime Hours
- *Payroll*
  - Basic Salary
  - Allowances
  - Deductions
  - Overtime Pay
  - Net Salary
  - Payment Date

### Special Scenarios Included
- Employees with *zero attendance but salary paid*
- *Ghost employees*
- Employees with *high overtime*
- Inactive employees receiving salary
- Department-wise salary variations

---

## DAX Measures Created

Some of the key measures created include:

- Total Employees  
- Total Payroll Cost  
- Average Salary  
- Attendance Rate %  
- Payroll Accuracy %  
- Salary Leakage Amount  
- Ghost Employees Count  
- Zero Attendance Employees  
- High Overtime Employees  
- Total Overtime Pay  

---

## Dashboard Pages

### Page 1 – Executive Payroll Overview
- KPI cards (Payroll Cost, Average Salary, Attendance Rate, Payroll Accuracy)
- Department-wise Payroll Cost
- Attendance by Department
- Overtime vs Salary analysis
- Risk tables:
  - Ghost Employees
  - Zero Attendance Employees
  - High Overtime Employees

---

### Page 2 – Employee-Level Analysis
- Detailed employee payroll table
- Payroll and attendance trends
- Overtime distribution
- Drill-through enabled for individual employees

---

## Insights

### [1] Payroll & Workforce Overview
- The organization consists of *12 employees* across multiple departments.
- Payroll costs vary significantly by department.

---

### [2] Ghost Employees & Salary Leakage
- *2 employees* were identified as ghost employees.
- Salary was paid despite *zero attendance*, resulting in payroll leakage.
- These cases highlight the need for attendance-linked payroll validation.

---

### [3] Overtime Analysis
- Certain employees show *unusually high overtime hours*.
- Overtime payments contribute significantly to payroll cost in some departments.

---

### [4] Attendance Patterns
- Attendance inconsistencies were observed across departments.
- Attendance data is not fully enforced in payroll calculations.

---

## Business Impact

- *Financial Risk:* Salary leakage due to attendance gaps
- *Operational Risk:* Weak linkage between attendance and payroll
- *Audit Risk:* Potential compliance issues during payroll audits

---
**##Screenshots**
show what dashboard looks like.

## Recommendations

- Enforce *attendance-based payroll validation*
- Set *overtime approval thresholds*
- Automatically flag *zero-attendance salary payments*
- Perform *monthly payroll exception audits*
- Improve integration between HR, Attendance, and Payroll systems

---

## Conclusion

This dashboard provides a comprehensive view of payroll performance and highlights critical risk areas such as ghost employees, salary leakage, and overtime abuse.  
By acting on these insights, organizations can improve payroll accuracy, reduce costs, and strengthen HR governance.

---

## Disclaimer

This project is created for *learning and portfolio purposes only*.  
All data used is *synthetic* and does not represent any real organization or individual
