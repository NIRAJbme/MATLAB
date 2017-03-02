u=imread('blobs.png');

% h=[-1 -1 -1; 0 0 0; 1 1 1 ];
% s=imfilter(u,h,'replicate');
% imshow(s)
% h1=[1 0 -1; 1 0 -1; 1 0 -1];
% s1=imfilter(u,h1,'replicate');
% s2=s+s1;

h2=[-1 -2 -1; 0 0 0; 1 2 1];
s3=imfilter(u,h2,'replicate');
h3=[-1 0 1; -2 0 2; -1 0 1]
s4=imfilter(u,h3,'replicate');
s5=s3+s4;
subplot(2,2,1);imshow(u);title('orignal image');
subplot(2,2,2);imshow(s3);title('horizontal sobel filter');
subplot(2,2,3);imshow(s4);title('vertical sobel filter');
subplot(2,2,4);imshow(s5);title('sum sobel filter');
