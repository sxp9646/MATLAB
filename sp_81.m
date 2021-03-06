%-------------------------------------------------------------------------%
%   Name: Suhail P.         Take Home Quiz1              Date: 3-24-15    %
%-------------------------------------------------------------------------%
clc
clear all

%8.1a
bal = 1000;
r = .01;
n = 1;
%t = 10;

format bank
A = bal*(1 + r)^(n);
fprintf('Your Balance is: %5.2f \n',A);  

bal = 1000;
for year = 1:10
    for month = 1:12
        bal = bal * 1.01;
    end
    disp( [year bal] );
end

%8.1b
disp('Vectorized');
format bank
bal=1000;
r=.01;
year = 1:10;
month=1:12;
f=bal*(1+r).^(year*12);
disp('          Year       Balance')
disp([year; f]')
