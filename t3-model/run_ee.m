clear
clf
preproc
n = 12
K = zeros(n)

K = assemble(K, EE)
K = assemble(K, R1)
K = assemble(K, R2)
K = assemble(K, R3)
K = assemble(K, TI)

det(K)
BC = [10, 0;
      11, 0;
      12, 0;
      9, 0;]
  
  
B = zeros(n,1)
B(1) = 1000
u = solvep(K, B, BC)

amp = 100000
draw_def(EE,u, amp)
draw_def(R1,u, amp)
draw_def(R2,u, amp)
draw_def(R3,u, amp)