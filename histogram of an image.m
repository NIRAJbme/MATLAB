a=imread('C:\Users\BME\Desktop\mammogram-file10.15');
b=zeros(1,256);
[row,col]=size(a);

for x=1:1:row
               for y=1:1:col
                       if a(x,y)<1
                           continue;
                       else
                        t=a(x,y);
                       end
                       b(t)=b(t)+1;
               end
end

subplot(1,2,1);
imshow(uint8(a));
title('Original Image');

subplot(1,2,2);
bar(b);
title('Histogarm of image');