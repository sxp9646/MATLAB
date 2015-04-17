%-------------------------------------------------------------------------%
%   Name: Suhail P.         Chapter 5              Date: 3-13-15          %
%-------------------------------------------------------------------------%

clc
clear all

%PartA
salary = [12000 15000 18000 24000 35000 50000 70000];
employees = [3000 2500 1500 1000 400 100 25];
avg = mean(salary);
fprintf('The average salary is: %5.2f\n',avg);

%PartB
above = sum((salary > avg) .* employees);
below = sum((salary < avg) .* employees);
fprintf('\n        Below      Above\n');
disp([below' above']);

%PartC
finavg = (salary.*employees)./(sum(employees));
fprintf('\nAverage individual salary %5.2f\n\n\n',sum(finavg))

% 5.6
disp('Problem 5.6');
x_6 = input('Please input in the following format [a b c d n]: ');
vec=max(x_6);
vec1=find(x_6<vec);
vec2=x_6(vec1);
disp('New vector is: ');
disp(vec2);

%5.7
units = [200 500 700 1000 1500];
amount = 0.02 * units .* (units <= 500) + 5;
amount = amount + (units > 500 & units <= 1000) .* (0.05 * (units-500) + 10);
amount = amount + (units > 1000) .* (0.1 * (units-1000) + 35);
fprintf('\n Electricity         Amount\n')
disp ( [units' amount'] );