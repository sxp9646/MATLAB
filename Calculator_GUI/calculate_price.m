function [price] = calculate_price(subtotal,taxrate)
%-------------------------------------------------------------------------------------------%
%        A. Knebel                                                        2-24-2015               %
% This function calculates the price based on the product cost and    %
% the taxrate.                                                                                              %
%                                                                                                                  %
% Calling syntax: [price] = calculate_price(subtotal,taxrate)                 %
%                                                                                                                  %
%   inputs: subtotal = product cost  [$]                                                      %
%           taxrate  = amount of tax [%]                                                         %
%                                                                                                                  %
%   output:   price  = subtotal*(1 + taxrate/100) [$]                                  %
%                                                                                                                  %
%-------------------------------------------------------------------------------------------%
%
format bank
price  = subtotal*(1 + taxrate/100);
end
 