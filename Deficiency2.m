% Integral variable of the deficiency 2 network

k1 = sym('k1', 'positive');
k2 = sym('k2', 'positive');
k3 = sym('k3', 'positive');
k4 = sym('k4', 'positive');
k5 = sym('k5', 'positive');
k6 = sym('k6', 'positive');
k7 = sym('k7', 'positive');
k8 = sym('k8', 'positive');

M = [-k1 0 0 k7 0 0 0 0 0 ;
     0 0 0 k2 -k3-k4 k5 0 0 0 ;
     k1 0 0 -k2-k7 k3 0 0 0 0 ;
     0 0 0 0 0 2*k6 0 -k8 0 ;
     0 0 0 0 2*k4 -2*k5-2*k6 0 k8 0 ]
 
i=5;
j=1;
m=size([M],2)
n = size([M],1)

N = M
N(:,[i j])=[] 

dm = size(null([M']),2) 
dn = size(null([N']),2) 

e = eye(m); 

Ma = [ M ; e(i,:) ; e(j,:)] 

NlMa = null([Ma']) 

setpoint = -NlMa((n+1),dm+1)

b = -NlMa(1:n,(dm+1)) 
                     
simplify(b'*M)       