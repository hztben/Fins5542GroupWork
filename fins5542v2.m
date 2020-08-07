microeconomic = [VarName1,VarName2,VarName3,VarName4];
beta = [VarName5,VarName6,VarName7,VarName8,VarName9,VarName10];
table = zeros(6,4);

for i = 1:1:6
    y = beta(:,i);
    for j = 1:1:4
        x = microeconomic(:,j);
        p = polyfit(x,y,1);
        yfit = polyval(p,x);
        yresid = y - yfit;
        SSresid = sum(yresid.^2);
        SStotal = (length(y)-1) * var(y);
        rsq = 1 - SSresid/SStotal;
        table(i,j) = rsq;
    end
    
end


