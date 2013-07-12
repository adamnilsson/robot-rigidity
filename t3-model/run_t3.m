clear
elements_def
n = 20
K = zeros(n)

K = assemble(K, EE)
K = assemble(K, R1)
K = assemble(K, R2)
K = assemble(K, R3)
K = assemble(K, TI)
K = assemble(K, CA3)
K = assemble(K, S1)

det(K)
BC = [9, 0;
      17, 0;
      18, 0;
      19, 0;
      20, 0]
  
  
B = zeros(n,1)
B(1) = 1
u = solvep(K, B, BC)

amp = 0.2
draw_def(EE,u, amp)
draw_def(R1,u, amp)
draw_def(R2,u, amp)
draw_def(R3,u, amp)
draw_def(TI,u, amp)
draw_def(CA3,u, amp)
draw_def(S1,u, amp)