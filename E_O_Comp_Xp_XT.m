% Integral variable of the EnvZ-OmpR network with a competitive inhibitor
% targeting X_p and XT
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


M = [-a1 a2 -a3 a4 0 0 0 0 0 0 0 0 0 ;
-a1 a2 0 0 k1 -k2-k3 0 0 0 0 -k7 k8+k9 0 ;
 a1 -a2 0 0 0 0 0 0 0 0 0 0 0 ;
  0 0 -a3 a4 0 k3 0 -k4 k5 0 0 0 0 ;
  0 0 a3 -a4 0 0 0 0 0 0 0 0 0 ;
  0 0 0 0 -k1 k2 0 0 k6 0 0 0 0 ;
  0 0 0 0 0 0 0 -k4 k5 0 0 k9 0 ;
  0 0 0 0 0 0 0 k4 -k5-k6 0 0 0 0 ;
  0 0 0 0 0 0 0 0 k6 0 -k7 k8 0 ;
  0 0 0 0 0 0 0 0 0 0 k7 -k8-k9 0 ]

i= 6; 
j= 11;
m=size([M],2) 
n = size([M],1)

N = M
N(:,[i j])=[] 

dm = size(null([M']),2) 

e = eye(m); 

Ma = [ M ; e(i,:) ; e(j,:)] 

NlMa = null([Ma']) 

setpoint = -NlMa((n+1),dm+1) 

b = -NlMa(1:n,dm+1) 
                     
simplify(b'*M)    
 