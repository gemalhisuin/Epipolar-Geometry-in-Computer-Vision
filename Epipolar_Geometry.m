clear all;
close all;
%% Epipolar Geometry
%% Gemal Hisuin 
%% Computer vision - Lab 3
N = 8;
I1 = imread('stereo1.jpg');
I2 = imread('stereo2.jpg');

%X1 = ones(2,N); % Empty vector to store the 8 points
%X2 = ones(2,N);
F = zeros(3,3);  % Empty matrix to calculate the fundamental matrix

disp('Calculation of the fundamental matrix algorithm by 8 points');
% Step 1 : Manually obtain 8 corresponding points from the two images 
% stereo1 (left) and stereo2 (right)
% In order to save your time for this task, I encourage you to use the
% function: clickPoints
%[X1, X2] = clickPoints(I1,I2,N);

% ---> TODO <---
%%
load('betterPointsX1X2.mat')
% Step 2 : Calculate the fundamental matrix with 8 point algorithm
% Reference: Chapter 11: Multiview Geometry and lecture slides (56-58)
% Completely writing the function is a part of your exercise session. 
% May be you can exploit the function MatF in you exercise subdirectory 
% which is 70% complete.
% ---> TODO <---
%%
F=MatF(X1,X2);
disp('F matrix obtained :');
disp(F);
% Step 3 : Calculate the Epipoles of two camera
% Reference: Chapter 9, page : Multiview Geometry
% Book chapter download link: http://www.robots.ox.ac.uk/~vgg/hzbook/hzbook2/HZepipolar.pdf
% Use of MATLAB function 'NULL' may be helpful for you.
rightepipole= null(F);
disp('F matrix obtained :');
disp(F);
leftepipole=  null(F'); 
disp('F matrix obtained :');
disp(F);
% ---> TODO <---
%%
% Click on an object point in the left image and you should see the
% epipolar line on the right image.
% May be you can exploit the function 'click' in you exercise subdirectory 
% which is 60% complete.
% ---> TODO <---
click(I1,I2,F)