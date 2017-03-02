a=imread('cameraman.tif');
b=a;
[r c]=size(a);
r1=input('inter lower value:-');
r2=input('inter higher value:-');
A=input('enter 1 slope:-');
B=input('enter 2 slope:-');
C=input('enter 3 slope:-');
S1=A*r1;
S2=B*(r2-r1)+S1;
for x=1:1:r
    for y=1:1:c
        if a(x,y)<=r1
            b(x,y)=S1;
        else if a(x,y)>r1 && a(x,y)<r2
                b(x,y)=B*(a(x,y)-r1)+S1;
            else b(x,y)=C*(a(x,y)-r2)+S2;
            end
        end
    end
end
subplot(2,1,1); imshow(a); title('original image');
subplot(2,1,2); imshow(b); title('stretched');
           