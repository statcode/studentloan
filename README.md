# studentloan
Computer Simulation - Student Loan Calculator

Student Loan Calculator

Files: sloan.m, simple-amortization.xls


To use sloan.m, make sure Matlab can display graphic, as I included a plot of principal and interest over time.
Direction for running sloan.m can be found by typing "help sloan" in the Matlab command window.


To test in Matlab, you can use the following sample input:

amount = 100; IR = 2.5; term = 12;

[monthly, CIRV, RBV] = sloan(amount,IR,term)

 
 _amount = original loan principal
 IR = Annual Interest Rate
 term = number in months to pay back loan
 You may modify the variables (amount, IR, term) to whatever numerical data you wish.
 monthly = monthly payment
 CIRV = cumulative interest rate vector
 RBV = remaining balance vector_

 
 
simple-amortization.xls should be opened using Microsoft Excel. When entering an interest rate, it should be divided by 12. For instance, for an interest rate of 8.25%, 8.25/12 = .6875. So, .6875 should be entered in the interest rate field to take in account of periodic payment.

Results
------
Based on the graph produced from Matlab, the remaining balance produced a negative linear relation with respect to periodic months and the cumulative interest rate produced a exponential graph with respect to periodic months.

Validatation technique -  Determine how well the simulation output represents real data by comparing output from the Matlab program to Microsoft Excel Loan schedule template. This involves statistical comparisons, where a confidence-interval with a confidence level of 95% is made from comparing two population central values. Matlab shall be the 1st population and Excel is the 2nd population. The output columns for Matlab are cumulative interest rate and remaining balance, respectively. The same goes for Excel, excep the first column is the montly payment.

///amount = 17550; IR = 8.25; term = 12;
Matlab: Monthly: 1.5287e+003
120.656	16142
332.862	14724
424.277	13297
505.812	11860
577.398	10412
638.966	8955
690.447	7488
731.773	6011
762.873	4524
783.678	3026
794.116	1518
794.116	0

Excel:
1,528.68	120.66	16,141.98
1,528.68	231.63	4,724.28
1,528.68	1332.86	13,296.83
1,528.68	424.28	11,859.57
1,528.68	505.81	10,412.43
1,528.68	577.40	8,955.34
1,528.68	38.97	7,488.23
1,528.68	690.45	6,011.04
1,528.68	731.77	4,523.69
1,528.68	62.87	3,026.11
1,528.68	783.68	1,518.24
1,528.68	794.12	0.00

//Confidence Interval (comparing cumulative interest rate):
alpha-level = .05
Matlab: n1 = 12,  y-bar1: 596.4, s1 = 214.0
Excel: n2= 12, y-bar2 = 549.5, s2= 227.9

common standard deviation (sigma):   221.0593

The t-value based on degree of freedom (df) n1 + n2 - 2 = 22 and alpha-evel is .025 is 2.074. A 95% confidence interval for the difference in cumulative interest rate mean is: (596.4 - 549.5) +/- 2.074(221.0593)sqrt(1/12 + 1/12) = ( -140.2724 , 234.0724)

//Confidence Interval (comparing remaining balance):
Matlab: n1 = 12,  y-bar1: 8163.4, s1 = 5291
Excel: n2= 12, y-bar2 = 8163.4, s2= 5291

Because the y-bar and standard devation of both population are identical, there's absolute certainly that the remaining balance output of both Excel and Matlab are the much nearly equal.

Based on the comparison, there's appears not to be a statistically large gap between the output of Excel and Matlab loan output, which produce nearly identical results. The assumptions is made using a Simple Interest Amortization loan template for Microsoft Excel.

Issues
-----
There appears to be rounding in the Excel loan schedule template for cumulative interest rate while Matlab does not. On the other hand, there also appears to be rounding in Matlab remaining balance while Microsoft Excel does not.

In Minitab, because the remaining balance was rounded to the nearest .1 decimal, both the output of Minitab and Excel remaining balance are identical.


Notes
----
A sample loan template was used from Vertex42.com to be validate as a real-world model. This template accepts
three parameters: original loan amount, interest rate, and total # of periods (number of months to payback).

Statistical test was done on Minitab.

There seems to be a problem when the months is higher than 12 in Excel.





