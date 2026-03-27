/*
 *  Section 2: Determining whether employee performance is broad-based or concentrated
 *  
 *  Intro to Section 2
 *
 *  The summaries in Section 1 show which employees generated the most sales activity, 
 *  but high totals alone do not fully explain performance. 
 *  Two employees may produce similar revenue while relying on very different customer portfolios. 
 *  One employee may build strong results through a wide base of customers, while another may depend heavily on one or two major accounts. 
 *  In this section, the investigation shifts from overall sales volume to customer concentration. 
 *  The goal is to determine how widely each employee’s business is distributed and whether any employee’s results
 *  are unusually dependent on a small number of customers.
 */

/*
 * 
 *  Begin by identifying which customers are associated with each employee’s orders. 
 *  At this stage, the goal is not yet to measure revenue, but simply to establish the relationship between employees and the customers they serve. 
 *  This step helps reveal whether an employee works with many different customers or appears repeatedly alongside the same accounts.
 *
 *  Tables used: Sales.[Order], Sales.Customer
 *
 *  Expected Output:

EmployeeId  CustomerId  CustomerCompanyName
----------- ----------- ----------------------------------------
          1           1 Customer NRZBB
          1           1 Customer NRZBB
          1           3 Customer KBUDE
.
.
.
          9          82 Customer EYHKM
          9          87 Customer ZHYOS
          9          88 Customer SRQVM

(830 rows affected)

*/

/*
 *  Query here:
 */

/*
 *  Now that the employee-customer relationship has been established,
 *  count how many distinct customers each employee served during the reporting period.
 *  This gives a first measure of account breadth. 
 *  An employee with a larger number of distinct customers may have a broader portfolio,
 *  while an employee with only a few customers may be more concentrated.
 *
 *  Expected Outputed:

EmployeeId  DistinctCustomers
----------- -----------------
          4                75
          1                65
          3                63
          2                59
          8                56
          7                45
          6                43
          5                29
          9                29

(9 rows affected)

*/

/*
 *  Query here
 */

/*
 *  The previous query shows how many customers each employee served,
 *  but management also needs to know which customers generated the most business.
 *  In this step, combine orders, customers, and order details so that net sales after discount can be summarized for each employee-customer pair.
 *  This reveals how much revenue each employee received from each account and prepares the way for identifying major customers.
 *
 *  Tables used: Sales.[Order], Sales.Customer, Sales.OrderDetail
 *
 *  Expected Outputed:

EmployeeId  CustomerId  CustomerCompanyName                      NetSalesAfterDiscount
----------- ----------- ---------------------------------------- ----------------------------------------
          1          71 Customer LCOUJ                                                      20653.1000000
          1          34 Customer IBVRG                                                      19800.0000000
          1          20 Customer THHDP                                                      17087.2800000
.
.
.          
          9          11 Customer UBHAU                                                        139.8000000
          9          28 Customer XYUFB                                                         57.8000000
          9          12 Customer PSNMQ                                                         12.5000000

(464 rows affected)

*/

/*
 *  Query here:
 */

/*
 *  After calculating revenue by employee-customer pair,
 *  summarize those results to identify each employee’s largest customer and determine how concentrated that employee’s revenue is. 
 *  For each employee: 
 *    report the total number of distinct customers, 
 *    the total revenue generated, 
 *    the revenue contributed by the largest customer, 
 *    and the percentage of the employee’s revenue represented by that customer. 
 *  This produces a clearer measure of customer concentration and helps distinguish employees with diversified portfolios from employees who rely heavily on one major account.

