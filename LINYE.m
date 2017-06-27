function [h1, h2]=LINYE(k)
w = load_database();
%PCA
temp = princomp(w);
%k = 25;                    %using first k components
COEFF = temp(:,1:k);
%Projection
Project = temp * COEFF;
%%
for j = 1:40
    Train(:,:,j) = temp(:,(j-1)*10+1:(j-1)*10+8);
    T(:,j) = mean(Train(:,:,j),2);
    Tempvec(:,j) = Project' * T(:,j);
    for i = 1:2
        Testvec(:,i,j) = Project' * temp(:,(j-1)*10+8+i);
    end
end
%%
%Calculating Euclidian distance
for j = 1:40
    for m = 1:40
        for i = 1:2
            Edist(:,i,j,m) = norm( Testvec(:,i,j) - Tempvec(:,m) ) ;
        end
    end
end
%%
%Distributions
h1 = 0;
h2 = 0;
for i = 1:40
    for j = 1:2
        h1=[h1; Edist(:,j,i,i)];
    end
end

for j = 1:40
    for m = 1:40
        for i = 1:2
            if j~=m
                h2=[h2; Edist(:,i,j,m)];
            end
        end
    end
end

hold on
hist1 = histogram(h1);
hist2 = histogram(h2);
Data=hist1.Data;
hist1Value=hist1.Values;
hist2Value=hist2.Values;