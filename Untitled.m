% x = exp(14);
% fprintf('the answer is %.14f',x);
% 
% y = 384123 * pi;
% fprintf('the answer is %f',y);
        
             
%line1
x1  = [7 10];
y1  = [0.56 0.54];
%line2
x2 = [9 9];
y2 = [0 0.59];
%fit linear polynomial
p1 = polyfit(x1,y1,1);
p2 = polyfit(x2,y2,1);
%calculate intersection
x_intersect = fzero(@(x) polyval(p1-p2,x),3);
y_intersect = polyval(p1,x_intersect);
line(x1,y1);
hold all;
line(x2,y2);
plot(x_intersect,y_intersect,'r*')

title('problem 3.8');
xlabel('Horizontal Axis')
ylabel('Vertical Axis')
grid
    




%Code fix problem
clear
clc
x1=2709/1024;                       
x2=10583/4000;
x3=2024/765;
x4=sqrt(7);
s1=('2709/1024');                      
s2=('10583/4000');
s3=('2024/765');
strings=char(s1,s2,s3);              
possible_approx=[x1,x2,x3];           
dif=abs(possible_approx-x4)        
smallest=max(dif)                   
index=find(smallest==dif) ;          
best_approx = possible_approx(index)  
value=char('x1','x2','x3');         
fprintf('The best approximation to the square root of 7\n')
fprintf('is %c = %c\n',value(index,:),strings(:,index))