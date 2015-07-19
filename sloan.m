%To test in Matlab, you can use the following sample input:
%>> amount = 100; IR = 2.5; term = 12;
%>> [monthly, CIRV, RBV] = sloan(amount,IR,term)
%amount = original loan principal
%IR = Annual Interest Rate
%term = number in months to pay back loan
%You may modify the variables (amount, IR, term) to whatever numerical data you wish.
%monthly = monthly payment
%CIRV = cumulative interest rate vector
%RBV = remaining balance vector

% Title: Student Loan Calculator 
% Author: Johnny Philavanh

function [monthly, CIRV,RBV]= sloan(amount,IR,term)
IR = (IR/100)/term; %periodic interest rate
CIR  = 0;
%Amortization Loan Algorithm
numerator = IR.*(1 + IR).^term;
denominator = (1 + IR).^term - 1;
monthly = amount * (numerator/denominator);

%rprincipal = amount;
RIR = amount * IR;
CIR = CIR + RIR;

CIRV(1) = CIR; %array for cumulative interest rate

    for i = 1:term
        rprincipal = (amount - monthly) + RIR;
        amount = rprincipal;
        RIR = rprincipal  * IR;
        CIR = CIR + RIR;
        
        if i > 1 CIRV(i) = CIR; end %array for cumulative interest rate
        RBV(i) = rprincipal;%array for remaining balance
    end
    
    
    %Plotting both the equations output
    x = 1:term;
    plot(x,RBV,x,CIRV)
    legend('Remaining Balance', 'Cumulative Interest Rate')
    xlabel('Period (months)')
    ylabel('Remaining Balance and Cumulative Interest Rate')
    title('Student Loan Schedule')
    
    
   
