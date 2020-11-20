%-------Apresentação------------------------------------
%Autor: David Jordão M.B. dos Santos - Rio grande do Sul
%Email: davidjordaocpv@gmail.com 
%https://github.com/Davidjordao
%https://www.linkedin.com/in/davidjordao/
%-------------------------------------------------------


function [p2,p3,p4]=interface(p2,p3,p4)


opcao=input('entre com o eixo que deseja rotacionar 1->p2 2->p3 3->p4 \n');
switch opcao
    case 1
        x=p2;
        y=p3-p2;%caso mover em x p2, mover p3 e p4 também
        z=p4-p3;
    case 2
        x=p3-p2;
        y=p4-p3;%caso mover em x p2, mover p4 também
    case 3
        x=p4-p3;
end
%-----------------------------------------------------------------------



eixo=input('entre com o eixo coordenado 1->.eixo X 2->.eixo Y 3->.eixo Z :\n');
switch eixo
    case 1
        
        beta=input('qual angulo deseja rotacionar :\n'); 
        x=rotation_x(x,beta);
        %---------teste-----------
        if(opcao==1)
            y=rotation_x(y,beta);
            z=rotation_x(z,beta);end
        if(opcao==2)
            y=rotation_x(y,beta);end
        %-------------------------
    case 2
        beta=input('qual angulo deseja rotacionar :\n');
        x=rotation_y(x,beta);
        %----------teste---------
        if(opcao==1)
            y=rotation_y(y,beta);
            z=rotation_y(z,beta);end
        if(opcao==2)
            y=rotation_y(y,beta);end
        %---------------------------
    case 3
        beta=input('qual angulo deseja rotacionar :\n');
        x=rotation_z(x,beta);
        %----------teste---------
        if(opcao==1)
            y=rotation_z(y,beta);
            z=rotation_z(z,beta);end
        if(opcao==2)
            y=rotation_z(y,beta);end
        %---------------------------
end




switch opcao
    case 1
        p2=x;
        p3=y+p2;
        p4=z+p3;
    case 2
        p3=x+p2;
        p4=y+p3;
    case 3
        p4=x+p3;
end



end