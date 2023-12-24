function [x,y] = hienanhinhthang(fxy,x0,xn,y0,N,e)
h=(xn-x0)/N;
x=x0:h:xn;
y(1)=y0;
for i=1:N
 y_temp=y(i)+h*fxy(x(i),y(i));
 while(1) 
y(i+1)=y(i)+0.5*h*(fxy(x(i),y(i))+fxy(x(i+1),y_temp));
 if(abs(y(i+1)-y_temp)<=e)
 break;
 end
 y_temp=y(i+1);
 end
end
end
