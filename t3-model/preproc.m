
% rod data
len1 = 500

%% End effector
geometry = [0,  -50,  0; 
            10, -50,  0; 
            60,  0,   0; 
            10,  50,  0; 
            0,   50,  0; 
            0,  -50,  0]

% rod angles
t1 = -pi/4
t2 = t1
t3 = pi/4

% connections [x,y, x,y,z]
% con = [0,   0, 1, 0,0;
%        0,   0, 0, 1,0;
%        0,   0, 0, 0,1;
%        15,-45, cos(t1),sin(t1),0;
%        50, -10, cos(t2),sin(t2),0;
%        15, 45, cos(t3),sin(t3),0]
con = [0 0 0,         1 0 0,               0 0 0;
       0 0 0,         0 1 0,               0 0 0;
       0 0 0,         0 0 0,               0 0 1;
       15 -45  0,     cos(t1) sin(t1) 0,   0 0 0;
       50 -10 0,      cos(t2) sin(t2) 0,   0 0 0;
       15 45 0,       cos(t3) sin(t3) 0,   0 0 0]
   
% global dof
dof = [1,2,3,4,5,6]

analysis = {'col1','col2','col3','col4x','col4y','col5x','col5y','col6x','col6y'}
measures = {'F1','F2','F3','F4x','F4y','F5x','F5y','F6x','F6y'}
Ke = parse('t3-fem\', analysis, measures)
Tm = [1 0 0 0 0 0 0 0 0;
      0 1 0 0 0 0 0 0 0;
      0 0 1 0 0 0 0 0 0;
      0 0 0 cos(t1) sin(t1) 0 0 0 0;
      0 0 0 0 0 cos(t2) sin(t2) 0 0;
      0 0 0 0 0 0 0 cos(t3) sin(t3);]
EE = element()
EE.Ke = Tm*Ke*Tm'

EE.geometry = geometry
EE.con = con
EE.dof = dof


draw_undef(EE)


%% Tilt
origo = [15+cos(t1)*len1+15, -45+sin(t1)*len1-30, 0]

screw_a = 4*pi/6;
geo_local = [0, 0, 0; 
             -30, 15, 0; 
             40, 85, 0; 
             55, 70, 0; 
             0,0, 0];
         
con_local = [0 0 0,       1 0 0,                        0 0 0;
             0 0 0,       1 0 0,                        0 0 0;
             42 70 0,     cos(screw_a) sin(screw_a) 0,  0 0 0;
             -15 30 0,    cos(t1) sin(t1) 0,            0 0 0;
             20 65 0,     cos(t1) sin(t1) 0,            0 0 0]
         
geometry = geo_local
geometry(:,1) = geo_local(:,1) + origo(1)
geometry(:,2) = geo_local(:,2) + origo(2)
geometry(:,3) = geo_local(:,3) + origo(3)

con = con_local
con(:,1) = con_local(:,1) + origo(1)
con(:,2) = con_local(:,2) + origo(2)
con(:,3) = con_local(:,3) + origo(3)

analysis = {'tilt1','tilt2','tilt3','tilt4','tilt5','tilt6','tilt7','tilt8'}
measures = {'F1','F2','F3','F4','F5','F6','F7','F8'}
Ke = parse('tilt-fem\', analysis, measures)
Tm = [1 0 0 0 0 0 0 0;
      0 1 0 0 0 0 0 0;
      0 0 cos(screw_a) sin(screw_a) 0 0 0 0;
      0 0 0 0 cos(t1) sin(t1) 0 0;
      0 0 0 0 0 0 cos(t2) sin(t2)]

dof = [10, 11, 12, 7, 8]
  
TI = element()
TI.Ke = Tm*Ke*Tm'

TI.geometry = geometry
TI.con = con
TI.dof = dof


draw_undef(TI)
  
%% Rod 1

R = 20
r = 18
E = 300000
A = (R^2-r^2)*pi
k = E*A

Ke = -[-k  k;
       k -k]/len1
   
   
geometry = [15, -45, 0; 
            15+cos(t1)*len1, -45+sin(t1)*len1, 0]
con = [geometry(1,:),      cos(t1) sin(t1) 0,       0 0 0;
       geometry(2,:),      cos(t1) sin(t1) 0,       0 0 0;]
   
dof = [4,7]

R1 = element()
R1.geometry = geometry
R1.con = con
R1. dof = dof
R1.Ke = Ke

draw_undef(R1)

%% Rod 2
len2 = len1
R = 20
r = 18
E = 300000
A = (R^2-r^2)*pi
k = E*A

Ke = -[-k  k;
       k -k]/len2
   
geometry = [50, -10, 0; 50+cos(t2)*len2, -10+sin(t2)*len2, 0]
con = [geometry(1,:),      cos(t2) sin(t2) 0,       0 0 0;
       geometry(2,:),      cos(t2) sin(t2) 0,       0 0 0;]
dof = [5,8]

R2 = element()
R2.geometry = geometry
R2.con = con
R2. dof = dof
R2.Ke = Ke

draw_undef(R2)
%% Rod 3
len3 = 500
R = 20
r = 18
E = 300000
A = (R^2-r^2)*pi
k = E*A

Ke = -[-k  k;
       k -k]/len3
   
geometry = [15, 45, 0; 15+cos(t3)*len3, 45+sin(t3)*len3, 0]
con = [geometry(1,:),      cos(t3) sin(t3) 0,       0 0 0;
       geometry(2,:),      cos(t3) sin(t3) 0,       0 0 0;]
dof = [6,9]

R3 = element()
R3.geometry = geometry
R3.con = con
R3. dof = dof
R3.Ke = Ke

draw_undef(R3)