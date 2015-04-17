%-------------------------------------------------------------------------%
%   Name: Suhail P.         Take Home Quiz1              Date: 3-24-15    %
%-------------------------------------------------------------------------%

%9.7
reach = 100;
x = zeros(reach,1);
y = zeros(reach,1);
%z = 0;
for n = 1 : reach - 1
    x(n+1) = y(n)*(1+sin(0.7*x(n)))-1.2*sqrt(abs(x(n)));
    y(n+1) = 0.21-x(n);
end
subplot(2,1,2);
plot(x,y,'.');
axis equal;