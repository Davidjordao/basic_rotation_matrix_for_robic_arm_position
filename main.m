%-------Apresentação------------------------------------
%Autor: David Jordão M.B. dos Santos - Rio grande do Sul
%Email: davidjordaocpv@gmail.com 
%https://github.com/Davidjordao
%https://www.linkedin.com/in/davidjordao/
%-------------------------------------------------------

%main deixa de existir(?)caso beta esteja pronto --------------inicio
clc
clear
fim=0;
%vai sair da main quando beta estiver pronto-------inicio
p2 = [0 0 1];
p3 = [0 0 2];
p4 = [0 0 3];
plotado(p2,p3,p4);
%-------------------------------------------fim
while (fim==0)
    [p2,p3,p4]=interface(p2,p3,p4);
    plotado(p2,p3,p4);
    fim=input('deseja sair 1.sim 0.não');
end
%---------------------------------------------------------------fim