%-------------------------------------------------------------------------%
%   Name: Suhail P.         Chapter 5              Date: 3-24-15          %
%-------------------------------------------------------------------------%

%6.1
a = [1:3;4:6;7:9];
disp(a);

%a
a(:,[2 3]) = a(:,[3 2])

%b
a(:,4)=0
 
%c
a([3 4],:) = a([2 3],:)
a(2,:) = [1,1,1,1]

%d
a(2,:) = []

%6.2
n = 6;
P = zeros(n);

for i = 3:6
    P(i,i-1) = 2/3;
    P(i-2,i-1) = 1/3;
end
INT = input('Intersection: (1/2/3/4/5/6) \n');
if INT == 1;
    x = [1 0 0 0 0 0]';
end
    if INT == 2;
        x = [0 1 0 0 0 0]';
    end
        if INT == 3;
            x = [0 0 1 0 0 0]';
        end
            if INT == 4;
                x = [0 0 0 1 0 0]';
            end
                if INT == 5;
                    x = [0 0 0 0 1 0]';
                end
                    if INT == 6;
                        x = [0 0 0 0 0 1]';
                    end

P(1,1)=1;
P(6,6)=1;
x = [0 1 0 0 0 0]';

for t = 1:50
    x = P * x;
    disp( [t x'])
end
disp(P^50)
%6.3
%Linear
A = [2 -1 1 ; 1 1 1 ; 3 -1 -1];
b = [4 3 1]';
x = (A \ b);
disp(x);
%Residual
r = (A*x)-b

%Determinant
d = det(A)

%Condition Estimator
n = rcond(A)

%Conclusively, the solutions to the system of equations
%were accurate as the residual ended up being zero
%and the determinant & condition estimator is ill-conditioned
%

%6.4
A = [1 5.000 ; 1.5 7.501];
b = [17.0 25.503]';
x = (A \ b)

r1 = (A*x)-b

%Condition Estimator
n1 = rcond(A)

%Determinant
d1 = det(A)

%Change 1
A = [1 5.000 ; 1.5 7.501];
b = [17.0 25.501]';
x = (A \ b)

r2 = A*x-b

%Condition Estimator
n2 = rcond(A)

%Determinant
d2 = det(A)

%These values do confirm ill conditioning

% Change with sensitivity analysis
A = [1.1 5.500 ; 1.65 8.5211];
b = [17.17 28.0511]';
x = (A \ b)

r3 = (A*x)-b  

%Condition Estimator
n3 = rcond(A)

%Determinant
d3 = det(A)

if(loop == 7)
    enter 5;
end

