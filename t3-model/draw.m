


clf
EE_c = [0,-1; .2,-1; 1.2,0; .2,1; 0,1; 0,-1]

plot(EE_c(:,1),EE_c(:,2))
plot_frame([0,0,0],.5)


plot(balls(1,1),balls(1,2), 'r*')
plot(balls(2,1),balls(2,2), 'r*')
plot(balls(3,1),balls(3,2), 'r*')

plot(grounds(1,1),grounds(1,2), 'r*')
plot(grounds(2,1),grounds(2,2), 'r*')
plot(grounds(3,1),grounds(3,2), 'r*')

for i=[1,2,3]
    plot([balls(i,1),grounds(i,1)],[balls(i,2),grounds(i,2)])
end


plot_frame(disp_ee,.5)
plot(def_balls(1,1),def_balls(1,2), 'g*')
plot(def_balls(2,1),def_balls(2,2), 'g*')
plot(def_balls(3,1),def_balls(3,2), 'g*')