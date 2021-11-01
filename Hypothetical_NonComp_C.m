% Integral variable of the hypothetical network with a non-competitive inhibitor
% targeting C (Reaction system 4.17)

k1 = sym('k1', 'positive');
k2 = sym('k2', 'positive');
k3 = sym('k3', 'positive');
k4 = sym('k4', 'positive');
k5 = sym('k5', 'positive');
k6 = sym('k6', 'positive');
k7 = sym('k7', 'positive');
k8 = sym('k8', 'positive');
k9 = sym('k9', 'positive');
k10 = sym('k10', 'positive');

a1 = sym('a1', 'positive');
a2 = sym('a2', 'positive');
a3 = sym('a3', 'positive');
a4 = sym('a4', 'positive');
a5 = sym('a5', 'positive');
a6 = sym('a6', 'positive');


M = [-a1 a2 -a3 a4 0 0 0 0 0 0 0 0 0 0 ;
-a1 a2 0 0 0 k3 0 -k4 k5 0 0 0 0 0 ;
 a1 -a2 0 0 0 0 0 0 0 0 0 0 -a5 a6 ;
  0 0 -a3 a4 0 0 0 k4 -k5-k6 0 0 0 0 0 ;
  0 0 a3 -a4 0 0 0 0 0 0 0 0 a5 -a6 ;
  0 0 0 0 -2*k1 2*k2 0 0 0 0 k7 -k8 0 0 ;
  0 0 0 0 k1 -k2-k3 0 -k4 k5+2*k6 -2*k7-2*k10 0 2*k9 -a5 a6 ;
  0 0 0 0 0 0 0 0 0 0 k7 -k8 0 0 ;
  0 0 0 0 0 0 0 0 0 k10 k8 -k9 0 0]
 
i=6;
j=8;
m=size([M],2)
n = size([M],1)

N = M
N(:,[i j])=[] 

dm = size(null([M']),2) 
dn = size(null([N']),2)  % d_m = d_n and so no linear integral variable exists

