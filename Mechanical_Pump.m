%-------------------------------------------------------------------------%
%   Name: Suhail P.         Take Home Quiz1              Date: 3-24-15    %
%-------------------------------------------------------------------------%

%8.15

p=input('Enter a number to see if its a prime number:  ');
b=2;
flag=0;
factors=cell(1);
[factors{end}]=deal(1);
  for b=2:p/2
      if mod(p,b)==0
          flag = 1;
          [factors{end+1}] = deal(b);
      end
  end
  if flag == 0
      disp('This is a prime number')
  else
      disp('This is not a prime number')
      [factors{end+1}]=deal(p);
      disp('The factors are as follows:')
      for z = 1 : length(factors)
          fprintf('\n %6.2f',factors{z});
      end
  end
        
        