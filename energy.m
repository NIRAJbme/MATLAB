n=-4:4;
x(n)=2^n;
E=sum(abs(x(n))^2);
stem(n,x(n),'linewidth',2);
tittle('energy signal');