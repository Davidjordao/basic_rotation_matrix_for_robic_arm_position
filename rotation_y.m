%-------Apresenta��o------------------------------------
%Autor: David Jord�o M.B. dos Santos - Rio grande do Sul
%Email: davidjordaocpv@gmail.com 
%https://github.com/Davidjordao
%https://www.linkedin.com/in/davidjordao/
%-------------------------------------------------------

%Function rotation in axis y
%function arm_r = rotation_y (vector_line,angle)
%
%
%arm_r � o vector [x,y,z] de saida que representa a rota��o do seguimento de reta
%vector_line � o seguimento de reta de entrada, em um dos eixos do robo
%angle � o angulo que deseja rotacionar o bra�o ou o seguimento de reta 
%

function arm_r = rotation_y (eixo,deg)
x=[0 0 0];
arm_r=[0 0 0];
%converter o valor de entrada de deg para rad
rad=((pi*deg)/180);
angle=[cos(rad) 0 sin(rad);0 1 0; -sin(rad) 0 cos(rad)];
for y=1:3
        for i=1:3
        trade=angle(y,i)*eixo(1,i);
        x(1,y)=x(1,y)+trade;
        end
    end
arm_r=x; 
end