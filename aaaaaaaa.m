t=-2:2;
y=zeros(1,5);
y(1,3)=1;
stem(t,y);
ylabel1 ('amplitude');
xlabel('time index');
title('impulse signal');