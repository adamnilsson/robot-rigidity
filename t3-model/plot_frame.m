function plot_frame(X, s)
    x = X(1)
    y = X(2)
    z = X(3)*180/pi
    ex = [x,y; x+s*cos(z), y+s*sin(z)]
    ey = [x,y; x+s*cos(z+pi/2), y+s*sin(z+pi/2)]
    hold on
     plot(ex(:,1),ex(:,2), 'r')
     plot(ey(:,1),ey(:,2), 'g')