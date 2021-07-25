function x = knapsack(v,w,W)
n = width(w);
x = zeros(1,n);  
f = -v;
intcon = 1:n;
lb = zeros(n,1);
ub = ones(n,1);

X = intlinprog(f,intcon,w,W,[],[],lb,ub);

for i = 1 : n
    if X(i) > 0
        x(i) = uint8(X(i));
        disp(i+"th item added to the backpack");
    end    
end

end