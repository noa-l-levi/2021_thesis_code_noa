% Integral variable of the hypothetical network (Reaction system 4.5)

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

M = [-2*k1 2*k2 0 0 0 k7 -k8 0 ;
   k1 -k2-k3 0 -k4 k5+2*k6 -2*k7-2*k10 0 2*k9 ;
    0 k3 0 -k4 k5 0 0 0 ;
    0 0 0 k4 -k5-k6 0 0 0 ;
    0 0 0 0 0 k7 -k8 0 ;
    0 0 0 0 0 k10 k8 -k9 ]

 
i= 2; 
j= 4;
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
 