function con=conway(mat,k)
if(k==1)
p=0;
else 
    disp(k);
[m n]=size(mat);
mat2=zeros(m,n);
    for i=1:m
        for j=1:n
            if (nearneigh(mat,i,j))>3 || nearneigh(mat,i,j)<2
              mat2(i,j)=0;
            elseif nearneigh(mat,i,j)==3
              mat2(i,j)=1;
            else
              mat2(i,j)=mat(i,j);
            end
        end 
    end
    conway(mat2,k-1);
    imshow(imresize(mat,3));
    basefile=sprintf('hello %d.png',k);
    fullfileN=fullfile('C:\Users\Mayank Agrawal\Desktop\danbrown\',basefile)
    imwrite(mat,fullfileN);
end
end