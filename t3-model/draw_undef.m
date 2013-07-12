function draw_undef(EL, framesize)
    hold on
    if (~exist('framesize', 'var'))
        framesize = 25;
    end
    
    geometry = EL.geometry;
    con = EL.con;
    n_con = size(con,1);
    
    if size(con, 2)>5
        %% 3D geometry
        plot3(geometry(:,1),geometry(:,2),geometry(:,3))

        for i=1:n_con
            con_i = con(i,:);
            pos_v = con_i(1:3)
            dir_v = con_i(4:6)
            rot_v = con_i(7:9)
            
            plot3(pos_v(1),pos_v(2),pos_v(3),'r*')
            
            if norm(rot_v) == 0
                % no rotation
                plot3([pos_v(1), pos_v(1)+dir_v(1)*framesize], [pos_v(2), pos_v(2)+dir_v(2)*framesize], [pos_v(3), pos_v(3)+dir_v(3)*framesize],'k.-')
                text(pos_v(1)+dir_v(1)*framesize*.5, pos_v(2)+dir_v(2)*framesize*.5, pos_v(3)+dir_v(3)*framesize*.5, num2str(EL.dof(i)))
            else
                % rotation
                plot_frame([con_i(1),con_i(2),0],framesize)
                text(con_i(1),con_i(2),num2str(EL.dof(i)))
            end
        end
    else
        %% 2D geometry
        plot(geometry(:,1),geometry(:,2))

        for i=1:n_con
            con_i = con(i,:);
            plot(con_i(1),con_i(2),'r*')

            if con_i(5) == 0
                % no rotation
                plot([con_i(1), con_i(1)+con_i(3)*framesize],[con_i(2), con_i(2)+con_i(4)*framesize],'k.-')
                text(con_i(1)+con_i(3)*framesize*.5,con_i(2)+con_i(4)*framesize*.5,num2str(EL.dof(i)))
            else
                % rotation
                plot_frame([con_i(1),con_i(2),0],framesize)
                text(con_i(1),con_i(2),num2str(EL.dof(i)))
            end
        end
    end
end