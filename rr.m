s=imread('blobs.png');


subplot(2,1,1);imshow(s);title('complete image');
subplot(2,1,2);imshow(s((1:64),(1:64)));title('1/4th of image');
