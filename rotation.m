%-------Apresentação------------------------------------
%Autor: David Jordão M.B. dos Santos - Rio grande do Sul
%Email: davidjordaocpv@gmail.com 
%https://github.com/Davidjordao
%https://www.linkedin.com/in/davidjordao/
%-------------------------------------------------------

function rotation(eixo,ponto,grau)
 p=load('pontos','p2','p3','p4');
switch ponto
    case 1%ponto p2
        trade0=p.p2;
        trade1=p.p3-p.p2;%caso mover em x p2, mover p3 e p4 também
        trade2=p.p4-p.p3;
    case 2%ponto p3
        trade0=p.p3-p.p2;
        trade1=p.p4-p.p3;%caso mover em x p2, mover p4 também
    case 3%ponto p4
        trade0=p.p4-p.p3;
end
rad=((pi*grau)/180);%como eu já sei o angulo, ja posso fazer isso genericamente
switch eixo
    case 1 %eixo X
        angle=[1 0 0;0 cos(rad) -sin(rad);0 sin(rad) cos(rad)];
    case 2 %eixo Y
        angle=[cos(rad) 0 sin(rad);0 1 0; -sin(rad) 0 cos(rad)];
    case 3 %eixo Z
        angle=[cos(rad) -sin(rad) 0;sin(rad) cos(rad) 0;0 0 1];
end
%ja tenho o tipo de transformada agora é só multiplicar
x=[0 0 0];%uma matriz vazia para 
for y=1:3
        for i=1:3
        trade=angle(y,i)*trade0(1,i);
        x(1,y)=x(1,y)+trade;
        end
    end
trade0=x;

switch ponto
    case 1
        p2=trade0;
        p3=trade1+p2;
        p4=trade2+p3;
    case 2
        p2=p.p2;
        p3=trade0+p2;
        p4=trade1+p3;
    case 3
        p2=p.p2;
        p3=p.p3;
        p4=trade0+p3;
end
save('C:\Users\David Bellini\Desktop\Projetos\robotic_arm\matlab\functions\pontos','p2','p3','p4');
end