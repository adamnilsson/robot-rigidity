clf
%% End effector
geometry = [0,-1; .2,-1; 1.2,0; .2,1; 0,1; 0,-1]

% connections [x,y, x,y,z]
con = [0,   0, 1, 0,0;
       0,   0, 0, 1,0;
       0,   0, 0, 0,1;
       .4,-.8, 1,-1,0;
       1, -.2, 1,-1,0;
       .4, .8, 1, 1,0]
   
% global dof
dof = [1,2,3,4,5,6]

Ke = [[-1, 0, 0, .3, .3, .3];
       [0, -1, -0, -.3, -.3, .3];
       [0, -0, -1, .1, -.5, -.1];
       [.3, -.3, .1, -1, .2, 0];
       [.3, -.3, -.5, .2, -1, 0];
       [.3, .3, -.1, 0, 0, -1]]
EE = element()
EE.geometry = geometry
EE.con = con
EE. dof = dof
EE.Ke = Ke

draw_undef(EE)

%% Rod 1
Ke = [-1  1;
       1 -1]
geometry = [0.4,-.8;0.4+3,-.8-3]
con = [0.4,-.8, 1,-1,0;
       0.4+3,-.8-3, 1,-1,0;]
   
dof = [4,7]

R1 = element()
R1.geometry = geometry
R1.con = con
R1. dof = dof
R1.Ke = Ke

draw_undef(R1)

%% Rod 2
Ke = [-1  1;
       1 -1]
   
geometry = [1,-.2;1+3,-.2-3]
con = [1,-.2, 1,-1,0;
       1+3,-.2-3, 1,-1,0;]
dof = [5,8]

R2 = element()
R2.geometry = geometry
R2.con = con
R2. dof = dof
R2.Ke = Ke

draw_undef(R2)
%% Rod 3
Ke = [-1  1;
       1 -1]
   
geometry = [0.4,.8;0.4+3,.8+3]
con = [0.4,.8, 1,1,0;
       0.4+3,.8+3, 1,1,0;]
dof = [6,9]

R3 = element()
R3.geometry = geometry
R3.con = con
R3. dof = dof
R3.Ke = Ke

draw_undef(R3)
%% Tilt
geometry = [3.5,-4; 3.4,-3.8; 4,-3.2; 4.3,-3; 3.5,-4]
con = [0.4+3,-.8-3, 1,-1,0;
       1+3,-.2-3, 1,-1,0;
       3.5,-4, 1, 0, 0;
       3.5,-4, 0, 1, 0;
       4.3,-3, -.2,.8, 0]

Ke = [-1 0.6 0.3 -0.3 -0.3;
       0.6 -1 0.2 -0.2 -0.5;
       0.3 0.2 -1 0 -0.3;
       -0.3 -0.2 0 -1 -0.3;
       -0.3 -0.5 -0.3 -0.3 -1]
  
dof = [7, 8, 10, 11, 16]
  
TI = element()
TI.geometry = geometry
TI.con = con
TI.dof = dof
TI.Ke = Ke

draw_undef(TI)
% Screw
Ke = 0.01*[-1  1;
       1 -1]
   
geometry = [4.5,-3.8;4.3,-3]
con = [4.5,-3.8, -.2,.8,0;
       4.3,-3, -.2,.8,0;]
dof = [15,16]

S1 = element()
S1.geometry = geometry
S1.con = con
S1. dof = dof
S1.Ke = Ke

draw_undef(S1)
% Cart
Ke = [-1.0  0.0  0.2  0.9  0.0 -0.1;
       0.0 -1.0  0.3  0.0  0.6  0.4;
       0.2  0.3 -1.0 -0.5 -0.5  -.2;
       0.9  0.0 -0.5 -1.0  0.0  +0.6;
       0.0  0.6 -0.5  0.0 -1.0  0.4;
      -0.1  0.4  -.2  +0.6  0.4 -1.0]
  
geometry = [3.3,-4.2; 3.5,-4; 4.5,-3.8; 4.8,-4.2; 3.3,-4.2]
con = [4,-4.2, 1, 0, 0;
       4,-4.2, 0, 1, 0;
       4,-4.2, 0, 0, 1;
       3.5,-4, 1, 0, 0;
       3.5,-4, 0, 1, 0;
       4.5,-3.8, -.2,.8, 0]

dof = [12 ,13 ,14, 10, 11, 15]
CA3 = element()
CA3.geometry = geometry
CA3.con = con
CA3.dof = dof
CA3.Ke = Ke

draw_undef(CA3)

% Beam3
Ke = [-10 0 0 5 0 5 0;
       0 -1 0 0 .5 0 .5;
       0 0 -1 0 0.5 0 -.5;
       5 0 0 -10 0 5 0;
       0 .5 .5 0 -1 0 1;
       5 0 0 5 0 -10 0;
       0 .5 -.5 0 1 0 -1]
  
geometry = [-2,-4.2; 8,-4.2; 8, -4.5; -2,-4.5]
con = [4,-4.2, 1, 0, 0;
       4,-4.2, 0, 1, 0;
       4,-4.2, 0, 0, 1;
       0,-4.35, 1, 0, 0;
       0,-4.35, 0, 1, 0;
       6,-4.35, 1, 0, 0;
       6,-4.35, 0, 1, 0]

dof = [12 ,13 ,14, 17, 18, 19, 20]
B3 = element()
B3.geometry = geometry
B3.con = con
B3.dof = dof
B3.Ke = Ke

draw_undef(B3)



check_element(EE)