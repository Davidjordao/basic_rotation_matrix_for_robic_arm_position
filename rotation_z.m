%-------Apresentação------------------------------------
%Autor: David Jordão M.B. dos Santos - Rio grande do Sul
%Email: davidjordaocpv@gmail.com 
%https://github.com/Davidjordao
%https://www.linkedin.com/in/davidjordao/
%-------------------------------------------------------

%Function rotation in axis z
%function arm_r = rotation_z (vector_line,angle)
%
%
%arm_r é o vector [x,y,z] de saida que representa a rotação do seguimento de reta
%vector_line é o seguimento de reta de entrada, em um dos eixos do robo
%angle é o angulo que deseja rotacionar o braço ou o seguimento de reta 
%

function arm_r = rotation_z (eixo,deg)
x=[0 0 0];
arm_r=[0 0 0];
%converter o valor de entrada de deg para rad
rad=((pi*deg)/180);
angle=[cos(rad) -sin(rad) 0;sin(rad) cos(rad) 0;0 0 1];
for y=1:3 %produto das matrizes
        for i=1:3
        trade=angle(y,i)*eixo(1,i);
        x(1,y)=x(1,y)+trade;
        end
    end
arm_r=x; 
end