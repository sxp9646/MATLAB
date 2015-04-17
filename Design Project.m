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



