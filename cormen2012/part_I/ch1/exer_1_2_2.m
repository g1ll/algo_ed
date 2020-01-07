% Ex. 1.2-2

% Suponha que estamos comparando implementações de ordenação por inserção e ordenação por
% intercalação na mesma máquina. Para entradas de tamanho n, a ordenação por inserção é 
% executada em 8n² passos, enquanto a ordenação por intercalação é executada em 64nlgn passos.
% Para quais valores de n a ordenação por inserção supera a ordenação por intercalação?

format shortG

t1=0;
t2=0;
n=10;
while t1<=t2 && t1 ~= inf &&  t2 ~= inf
    n=n+1;
    t1=f1(n);
    t2=f2(n);
    fprintf("\n%d\t%.3f\t%.3f",[n t1 t2])
end
if t1 ~= inf &&  t2 ~= inf
   fprintf("\nn=%d\nt1=%.3f\n",[n t1]);
else
   fprintf("\nT2=Infinito!\n");
end

function t = f1(n) 
        t=8*n^2;
end

function t = f2(n) 
        t=64*n*log2(n);
end