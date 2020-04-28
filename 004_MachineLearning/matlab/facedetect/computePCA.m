function [mV,EV,sV] = computePCA(M) 
mv = mean(M,2);
m = mv*ones(1,32);
m = uint8(m);
mV = uint8(mv);
A = m - M;
A = double(A);
B = transpose(A);
L = B * A;
[V,D] = eig(L);
Ev = A * V;
K = 20;
EV = Ev(:,(end:-1:end-(K-1)));
EV = single(EV);
sV = B * EV;

 
