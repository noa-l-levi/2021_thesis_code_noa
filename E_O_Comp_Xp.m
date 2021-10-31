% Integral variable of the EnvZ-OmpR network with a competitive inhibitor
% targeting X_p

M = [-a1 a2 0 0 0 0 0 0 0 0 0 ;
     -a1 a2 0 k3 0 -k4 k5 0 0 0 0 ;
      a1 -a2 0 0 0 0 0 0 0 0 0 ;
       0 0 -k1 k2 0 0 k6 0 0 0 0 ;
       0 0 k1 -k2-k3 0 0 0 0 -k7 k8+k9 0 ;
       0 0 0 0 0 -k4 k5 0 0 k9 0 ;
       0 0 0 0 0 k4 -k5-k6 0 0 0 0 ;
       0 0 0 0 0 0 k6 0 -k7 k8 0 ;
       0 0 0 0 0 0 0 0 k7 -k8-k9 0]
   
i= 4; 
j= 9;
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
