function click(I1,I2,F)

%figure(1);
%subplot(1,2,1)
%imagesc(I1);
%subplot(1,2,2)
%imagesc(I2);

P = ones(2);

% Viewing Images
figure; 
subplot(1,2,1);
imshow(I1);hold on;
subplot(1,2,2); 
imshow(I2);hold on;

for i=1:100
% Entering a point on the image
[xi,yi] = ginput(1); 
P(1) = xi;
P(2) = yi;

plot(P(1), P(2),'g+');

% Plotting of the epipolar lines for the point P
x = 0:size(I1,2);
y = ones(size(x)) * 70;
% Replace y values with correct values in order to draw the line

% ---> TODO <---
% Using the eqn of line: ax+by+c=0; y = -(c+ax)/b
left_P = [P(1) P(2) 1]';
right_P = F*left_P;
y = -(right_P(1)*x+right_P(3))/right_P(2);

% Plotting of the lines in the right image
[T Id] = find( y>0 & y<size(I1,1) );
subplot(1,2,2); 
plot(x(Id),y(Id),'b');

end