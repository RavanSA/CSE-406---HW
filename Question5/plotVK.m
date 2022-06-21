function x = SelectElems(M,a,b)
[r,~] = size(M);
x = M(a+r.*(b-1));  
end