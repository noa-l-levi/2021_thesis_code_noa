% Integral variable of the EnvZ-OmpR network with a non-competitive
% inhibitor targeting X_p and XT (Reaction system )

k1 = sym('k1', 'positive');
k2 = sym('k2', 'positive');
k3 = sym('k3', 'positive');
k4 = sym('k4', 'positive');
k5 = sym('k5', 'positive');
k6 = sym('k6', 'positive');
k7 = sym('k7', 'positive');
k8 = sym('k8', 'positive');
k9 = sym('k9', 'positive');

a1 = sym('a1', 'positive');
a2 = sym('a2', 'positive');
a3 = sym('a3', 'positive');
a4 = sym('a4', 'positive');
a5 = sym('a5', 'positive');
a6 = sym('a6', 'positive');
a7 = sym('a7', 'positive');
a8 = sym('a8', 'positive');
a9 = sym('a9', 'positive');
a10 = sym('a10', 'positive');
a11 = sym('a11', 'positive');
a12 = sym('a12', 'positive');
a13 = sym('a13', 'positive');



M = [-a1 a2 -a3 a4 -a6 a7 -a8 a9 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
-a1 a2 0 0 0 0 0 0 k1 -k2-k3 0 0 0 0 0 0 -k7 k8+k9 0 0 0 ;
 a1 -a2-a5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -a12 a13 ;
  0 0 -a3 a4 0 0 0 0 0 k3 0 -k4 k5 0 0 0 0 0 0 0 0 ;
  0 a5 a3 -a4 0 0 0 0 0 0 0 0 0 0 -a10 a11 0 0 0 0 0 ;
  0 0 0 0 -a6 a7 0 0 0 0 0 k4 -k5-k6 0 0 0 0 0 0 0 0 ;
  0 0 0 0 a6 -a7 0 0 0 0 0 0 0 0 a10 -a11 0 0 0 0 0 ;
  0 0 0 0 0 0 -a8 a9 0 0 0 0 0 0 0 0 k7 -k8-k9 0 0 0 ;
  0 0 0 0 0 0 a8 -a9 0 0 0 0 0 0 0 0 0 0 0 a12 -a13 ;
  0 0 0 0 0 0 0 0 -k1 k2 0 0 k6 0 0 0 0 0 0 0 0 ;
  0 0 0 0 0 0 0 0 0 0 0 -k4 k5 0 -a10 a11 0 k9 0 0 0 ;
  0 0 0 0 0 0 0 0 0 0 0 0 k6 0 0 0 -k7 k8 0 -a12 a13]
 

   
i=10;
j=17;
m=size([M],2)
n = size([M],1)

N = M
N(:,[i j])=[] 

dm = size(null([M']),2) 
dn = size(null([N']),2) % d_m = d_n and so no linear integral variable exists

