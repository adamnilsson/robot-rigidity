function u = solvep(K, B, BC)
n = size(K,1)
Ks = K

bc_N = BC(:,1)
bc_u = BC(:,2)

uf = zeros(n,1)
uf(bc_N) = bc_u


B_s = B - K*uf

used = 1:n
used(bc_N) = []

B_s = B_s(used,:)

Ks = K(used,used)

u_s = Ks\B_s

u = zeros(n,1)
u(used) = u_s
u(bc_N) = bc_u