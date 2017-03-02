n=-10:.01:15;
xn=1;
t=0:n-1;
y=ones(1,n);
stem(t,y);
Y label('amplitude');
X label('time index');
tittle('unit step');