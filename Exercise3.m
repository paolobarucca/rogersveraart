%BIG DATA FINANCE - EXERCISE 3

nbanks = 3;
interbankLiabilitiesMatrix = [0 4  0; ...
                              0  0 3;... 
                              2 0  0];

externalAssets =      [20; 20; 10];
externalLiabilities = [17; 18; 8];
externalAssetsFiresaleRate = 1;
interbankFiresaleRate = 1;

uniformShock = 0.1;

%new% 
shock = uniformShock*externalAssets;
externalAssetsShocked  =  externalAssets - shock;

[equityLoss equity equityZero paymentVector error] = rogersveraart(interbankLiabilitiesMatrix,externalAssetsShocked,externalLiabilities, ...
                                                                   externalAssetsFiresaleRate, interbankFiresaleRate);

bdfplot(nbanks, equityZero, equityZero + shock, equity)