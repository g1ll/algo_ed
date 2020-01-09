% Ex. 1.2-3

% Qual é o menor valor de n tal que um algoritmo cujo tempo de execução é 100n²
% funciona mais rapidamente que um algoritmo cujo tempo de execução é 2^(n) na mesma
% máquina?
%Resp. O menor valor é 15
format shortG
more off

t1=0;
t2=0;
n=0;
fprintf("\nn\t\tt1\t\tt2",[n t1 t2]);
while t1>=t2 && t1 ~= inf &&  t2 ~= inf
    n=n+1;
    t1=f1(n);
    t2=f2(n);
    fprintf("\n%d\t%15.3f\t%15.3f",[n t1 t2]);
end

if t1 ~= inf &&  t2 ~= inf
    fprintf("\nn=%d\nt1=%.3f\n",[n t1]);
else
    fprintf("\nT2=Infinito!\n");
end

function t = f1(n) 
    t=100*n^2;
end

function t = f2(n) 
    t=2^n;
end


