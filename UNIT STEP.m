n=-10:15;
x(n)=1;
t=0:n-1;
y=ones(1,n);
stem(t,y);
y label('AMPLITUDE');
x label('TIME INDEX');
tittle('unit step');