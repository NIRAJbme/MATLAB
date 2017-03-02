a=imread('coins.png');
imshow(a);
figure
b=a;
[r c]=size(a);
t=input('enter threshold value:-')
for x=1:1:r
    for y=1:1:c
        if a(x,y)<=t
            b(x,y)=0;
        else b(x,y)=255;
        end
    end
end
imshow(b)
subplot(2,1,1);imshow(a);title('original image');
subplot(2,1,2);imshow(b);title('thresholded image')