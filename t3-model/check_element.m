function valid = check_element(EL)
    valid = 1;
    if length(EL.dof) ~= size(EL.con,1)
        valid = 0;
        error('Global DoF association does not match the DoF specified in con.')
    end
end