u=imread('cameraman.tif');
% imshow(u)
% title('suraj')
% imageinfo('cameraman.tif')
% xlabel('rows=256')
% ylabel('column=256')
h=[1 1 1, 0 0 0, -1 -1 -1 ];
s=imfilter(u,h,'replicate');
imshow(s)

% b=s;
% [r c]=size(s);
% t=input('enter threshold value:-')
% for x=1:1:r
%     for y=1:1:c
%         if s(x,y)>=t
%             b(x,y)=0;
%         else b(x,y)=255;
%         end
%     end
% end
% imshow(b)

subplot(3,1,1);imshow(u);title('orignal image');
subplot(3,1,2);imshow(s);title('filtered image');
% subplot(3,1,3);imshow(b);title('thresholded image')

