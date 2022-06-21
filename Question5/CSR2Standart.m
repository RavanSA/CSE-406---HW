function B =  CSR2Standart(v,c,pb,pe)
    row = ones(1,length(c));
    pb(length(pb) + 1) = pe(length(pe));

    for i=1:length(pb) - 1
        row(pb(i):pb(i+1)) = i;
    end

    row(end) = [];
    A = sparse(row,c,v);
    B = full(A);
end