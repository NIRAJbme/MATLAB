% f=zeros(101,101);
% f(15,80)=1;
% f(80, 15)=1;
% f(1, 1)=1;
% f(20, 30)=1;
% f(51 ,51)=1;
% % subplot(2,1,1);
% imshow(f);title('pointed image');
% H=hough(f);figure
% % subplot(2,1,2);
% imshow(H);title('hough transformed')
% 
% % x=imread('cameraman.tif');
% % % i=rgb2gray(x);
% % subplot(2,2,1);imshow(x);title('original');
% % f=edge(x,'canny');
% % subplot(2,2,2);imshow(f);title('edge detected')
% % H=hough(x);
% % subplot(2,2,3)
% % imshow(H);title('hough transform')
I  = imread('blobs.png');
% rotI = imrotate(I,33,'crop');
BW = edge(I,'canny');
[H,T,R] = hough(BW);
imshow(H,[],'XData',T,'YData',R,...
            'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P  = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
x = T(P(:,2)); y = R(P(:,1));
plot(x,y,'s','color','white');
% Find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
figure, imshow(I), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','blue');


























9
