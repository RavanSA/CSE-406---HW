function X = MSS(g)

X = intlinprog(f,intcon,A,b,[],[],lb,ub);

end