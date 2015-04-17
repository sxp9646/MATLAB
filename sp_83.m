%-------------------------------------------------------------------------%
%   Name: Suhail P.         Take Home Quiz1              Date: 3-24-15    %
%-------------------------------------------------------------------------%

%8.3
repeat = input('Please enter number of times to repeat A and N : ');
A = 1; 
N = 6;
for i = 1:repeat
    N = 2 * N;
    A = 2 - sqrt((4-A*A))^(1/2);
    L = (N*A)/2;
    U = L/sqrt((1-(A*A)/2));
    P = (U+L)/2;
    E = (U-L)/2;
    disp([N P E]);
end