function LinearRegression
data=load('motorcycleprices');
X = [ones(size(data.T.Var1)) data.T.Var1 data.T.Var2  data.T.Var3];
Y = data.T.Var4;

Beta = (X'*X)\(X'*Y); 
SSres = (Y-X*Beta)'*(Y-X*Beta);
SStot = sum((Y-mean(Y)).^2);
R2 = 1 -SSres/SStot;

predicted = X * Beta;

disp(R2);

figure;
scatter3(data.T.Var2, data.T.Var3, predicted, 'bs', 'filled',...
        'MarkerEdgeColor','k',...
        'MarkerFaceColor',[0 .75 .75]);
title('Linear Regression')
grid on;
grid minor;
xlabel('Year');
ylabel('Milage');
zlabel('Price');

end



