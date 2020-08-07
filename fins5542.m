month = VarName2;
month1 = floor(month/100);
L = length(month);
position = zeros(400,1);
slope = zeros(400,1);
j = 1;

for i = 2:1:L
    if ((month1(i)-month1(i-1))~=0)
        position(j)=i;
        j=j+1;
    end
end

G = VarName6;
F = VarName5;
start = 2;
l=1;
for i = 3:3:j
    End = position(i)-1;
    xiuu  = polyfit(F(start:End),G(start:End),1);
    k = xiuu(1);
    slope(l)=k;
    l=l+1;
    start = position(i);
end



