%U=out.U;
%Y=out.Y;

L=2;
[A,B,C,D,CF,F,x0]=dsr(Y,U,L);
K=CF*inv(F);