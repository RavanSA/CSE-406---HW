function plotVK(imgname)
    if nargin == 0, error('plotVK function must take filename'); end

    a = get_rgb(imgname);
    [numRows,numCols] = size(a);

    s = svd(a);

    numerator = 0;
    denominator = 0;
    for j = 1:min(3*numRows,numCols)
      denominator = denominator + power(s(j),2);
    end
    
    for k =1:min(3*numRows,numCols)
       
        for i = 1:k
          numerator = numerator + power(s(i),2);
        end
        
        vk = 1 - (numerator/denominator);
        semilogy(k,vk,'--.k');
        hold on;
        grid on;
        numerator = 0;
    end
    
        xlabel ('Rank of Approximation')
        ylabel('Singular Value Decay of RGB')    
end
