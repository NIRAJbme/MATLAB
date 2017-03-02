a=imread('C:\Users\Public\Pictures\Sample Pictures\Hydrangeas.jpg');
imshow(a);
title('bitty');
f=rgb2gray(a)
b=imadjust(f, [0.25 0.75], [0 1], 0.01);
g1=imadjust(f, stretchlim(f), [0 1]);
subplot(2,1,1); 
imshow(f);
subplot(2,1,2); 
imshow(g1);
n=imcomplement(f);
subplot(2,1,1);
imshow(f);
subplot(2,1,2);
imshow(n);
i=im2uint8(mat2gray(log(1+double(f))));
imshow(i);
imhist(g1);
E=histeq(f, 256);
subplot(2,2,1);
imshow(f);
subplot(2,2,2);
imhist(f);
ylim('auto')
subplot(2,2,3);
imshow(E);
subplot(2,2,4);
imhist(E);
ylim('auto');

