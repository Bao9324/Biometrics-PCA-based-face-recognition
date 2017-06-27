function EER=FRRFAR(h1, h2)
n = 100;
hmax=max( max(h1(:)), max(h2(:)) );
hmin=min( min(h1(:)), min(h2(:)) );
Threshold = [hmin: (hmax-hmin)/n : hmax];
FRR = zeros(n,1);
FAR = zeros(n,1);

for i = 1:n
    FAR(i) = sum((h2<=Threshold(i)))/size(h2,1);
    FRR(i) = 1 - sum((h1<=Threshold(i)))/size(h1,1);
end

figure
hold on
plot(FRR, FAR, 'r')

%stem(FRR, FAR, 'b')
x = 0:1/n:1;
plot(x,x,'b')


EER = FRR( find( (FRR - FAR)<= 0.00001, 1) )
