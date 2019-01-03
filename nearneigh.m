function ass = nearneigh(mat,a,b)
ass=0;
[m,n]=size(mat);

if (a~=1 && b~=1 && a~=m && b~=n)
    ass=sum(sum(mat(a-1:a+1,b-1:b+1)))-mat(a,b);
elseif(a==1 && b~=1 && b~=n)
    ass=sum(sum(mat(a:a+1,b-1:b+1)))-mat(a,b);
elseif(a==m  && b~=1 && b~=n)
    ass=sum(sum(mat(a-1:a,b-1:b+1)))-mat(a,b);
elseif(b==1  && a~=1 && a~=m)
    ass=sum(sum(mat(a-1:a+1,b:b+1)))-mat(a,b);
elseif(b==n  && a~=1 && a~=m)
    ass=sum(sum(mat(a-1:a+1,b-1:b)))-mat(a,b);
elseif(b==1  && a==1)
    ass=sum(sum(mat(a:a+1,b:b+1)))-mat(a,b);
elseif(b==1  && a==n)
    ass=sum(sum(mat(a-1:a,b:b+1)))-mat(a,b);
elseif(b==n  && a==n)
    ass=sum(sum(mat(a-1:a,b-1:b)))-mat(a,b);
elseif(b==n  && a==1)
    ass=sum(sum(mat(a:a+1,b-1:b)))-mat(a,b) ;   
end
