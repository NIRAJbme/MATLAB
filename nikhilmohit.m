i=imread('ribs.jpg');
imshow('ribs.jpg');
imfinfo('ribs.jpg');
i1=imread('heart.jpg');
imshow('heart.jpg');
i2=rgb2gray(i1);
imshow(i2);
i3=rgb2ind(i1,8);
i4=im2bw(i1);
imshow(i4);
imcrop(i);
b=edge(i2);
imshow(b);
c=imtool(i);
imshow(c)
