n=0:0.02:20;
f=0.1;
a=2;
y=a*sin(2*f*pi*n);
stem(n,y);
xlabel('amplitude');