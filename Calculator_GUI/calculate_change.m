function [amt_ret, x]= calculate_change(tendered,price)
%--------------------------------------------------------------------------------------------------------%
%     A. Knebel                                                           2-24-2015                               %
% This function calculates the change from a purchase given the                        %
% amount tendered and the purchase price. The function also provides            %
% minimum denominations to make up the change.                                             %
%                                                                                                                                  %
% Calling syntax:                                                                                                        %
%    [amt_ret, xprice] = calculate_change(tendered,price)                                    %
%                                                                                                                                  %
%  inputs: tendered = amount of currency given to the cashier [$]                        %
%          price    = purcahse price [$]                                                                         %
%                                                                                                                                  %
%   output:   change = tendered - price [$]                                                               %
%                           x  = vector indicating the amountof each                                   %
%                                  denomination to make up the change                                 %
%                                                                                                                                   %
%---------------------------------------------------------------------------------------------------------%
%
format bank
denoms=[50,20,10,5,1,0.25,0.10,0.05,0.01];    % denominations vector
change=tendered-price;
for k=1:length(denoms)
    index=0;
    while change+75*eps>=denoms(k)
    index=index+1;
    change=change-denoms(k);
    end
x(k)=index;
end
amt_ret=sum(denoms.*x);
error = change - amt_ret;
end
  