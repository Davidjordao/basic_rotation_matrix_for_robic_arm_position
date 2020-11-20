%-------Apresentação------------------------------------
%Autor: David Jordão M.B. dos Santos - Rio grande do Sul
%Email: davidjordaocpv@gmail.com 
%https://github.com/Davidjordao
%https://www.linkedin.com/in/davidjordao/
%-------------------------------------------------------


function plotado(p2,p3,p4)

p1 = [0 0 0];%origem/base 
%     X Y Z

%primeiro seguimento de reta
plot3([p1(1) p2(1)],[p1(2) p2(2)],[p1(3) p2(3)],'-k','linewidth',3);
%      x1    x2      y1    y2      z1    z2
hold on
%segundo segmento de reta
plot3([p2(1) p3(1)],[p2(2) p3(2)],[p2(3) p3(3)],'-b','linewidth',3);

%terceiro seguimento de reta
plot3([p3(1) p4(1)],[p3(2) p4(2)],[p3(3) p4(3)],'-r','linewidth',3);
%      x1    x2      y1    y2      z1    z2

axis([-2 2 -2 2 0 4])
xlabel('X');
ylabel('Y');
zlabel('N');
hold off
grid on
end