a=2;
fm=1000;
T=1/fm;
fs=(2*1000)*20;
ts=1/fs;
t=0:ts:T;
%sampler
x=a*sin(2*pi*fm*t);
l=length(x);
del=0.2;
y=0;
del=0.2;
for i=1:l;
    if  x(i)>y(i)
        d(i)=1;
   y(i+1)=y(i)+del;
    else d(i)=0;
        y(i+1)=y(i)-del;
    end 
end
figure(1)
plot(x,'black');
hold on
stairs(y)
grid on
