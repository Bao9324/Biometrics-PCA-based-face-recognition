i = 1;
K = zeros(5,1);
for k = 1:2:250
    [h1, h2]=LINYE(k);
    EER(i)=FRRFAR(h1, h2);
    K(i)=k;
    i = i+1;
end

%plot EER-k
figure
stem(K,EER,'b')
hold on
plot(K,EER,'r')

%%
%plot ROC
[h1, h2]=LINYE(10);
FRRFAR(h1, h2);
    