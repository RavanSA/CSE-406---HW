function lowRankApp(imgname, rankimg)
a = get_rgb(imgname);
disp('stacked RGB matrix size: '); disp(size(a));
[numRows, numCols] = size(a);

disp('Max rank of the image'); disp(min(3*numRows, numCols));

if nargin == 1, rankimg = min(3*numRows, numCols); end

if  rankimg < 0 || rankimg > min(3*numRows, numCols)
   error('Invalid Rank Interval'); 
end


[U, S, V] = svd(a);
lra = U(:,1:rankimg)*S(1:rankimg,1:rankimg)*V(:,1:rankimg)';
plot_image_rgb(lra)

end
