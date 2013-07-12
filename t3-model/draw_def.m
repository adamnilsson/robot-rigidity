function draw_def(EL, u, amp)
    if (~exist('framesize', 'var'))
        framesize = 25;
    end
    
    if size(EL.con, 2)>5
        %% 3D Geometry
        dof = EL.dof;
        for i=1:length(dof)
            node = dof(i);
            u_i = u(node);
            anchor = EL.con(i,1:3);
            % check unique
            posi = anchor;

            for j=1:length(dof)
                if EL.con(j,1:3) == anchor
                    u_j = u(dof(j))
                    posi = posi + EL.con(j,4:6)*u_j*amp
                end
            end



            if norm(EL.con(i,7:9)) == 0
                plot3(posi(1),posi(2), posi(3),'gO')
                plot3([anchor(1), posi(1)],[anchor(2),posi(2)],[anchor(3),posi(3)],':','color',[.5,.5,.5])
            else
                plot_frame([posi(1),posi(2),u_i],framesize)
            end
        end
    else
        %% 2D Geometry
        dof = EL.dof;
        for i=1:length(dof)
            node = dof(i);
            u_i = u(node);
            anchor = EL.con(i,1:2);
            % check unique
            posi = anchor;

            for j=1:length(dof)
                if EL.con(j,1:2) == anchor
                    u_j = u(dof(j))
                    posi = posi + EL.con(j,3:4)*u_j*amp
                end
            end



            if EL.con(i,5) == 0
    %             dir = EL.con(i,3:4)*u_i*amp
                %plot(anchor(1)+dir(1),anchor(2)+dir(2),'gO')
                plot(posi(1),posi(2),'gO')
                plot([anchor(1), posi(1)],[anchor(2),posi(2)],':','color',[.5,.5,.5])
            else
                plot_frame([posi(1),posi(2),u_i],framesize)
            end
        end
    end
end