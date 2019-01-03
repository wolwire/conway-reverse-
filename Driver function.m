%read initial stage
I=imread('C:\Users\Mayank Agrawal\Desktop\Untitled.png');
I=im2double(I);
%Convert to 0-1 state
I=ceil(I);

%driver for conway from initial random state with 200 iterations

conway(I,200);
 