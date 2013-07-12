function K = assemble(K, EL)
    if check_element(EL) ~= 1
        error('Invalid element')
    end
    dof = EL.dof
    K(dof,dof) = K(dof,dof) + EL.Ke


% matricies
% K = zeros(9,9)
% 
% for i=1:length(Edof)
%     dof = cell2mat(Edof(i))
%     Ke = cell2mat(Kel(i))
%     K(dof,dof) = K(dof,dof)+Ke
% end
% 
% B = [0,0,0,0,0,1,0,0,0]'
% 
% u = solvep(K, B, BC)
% factor = 0.1
% disp_ee = u(1:3)*factor
% disp_ball = [u(4)*dirs(1,:);u(5)*dirs(2,:);u(6)*dirs(3,:)]
% 
% def_balls = balls + disp_ball*factor
% 
% draw