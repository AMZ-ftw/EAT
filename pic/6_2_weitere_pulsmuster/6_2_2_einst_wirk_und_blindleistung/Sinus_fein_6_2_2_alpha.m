alpha = [-25,   -20,   -15,   -10,  -5,   0,    5,   10,   15,  20,  25];
U =     345;
I =     [6.15,  5.18,  4.23,  3.3,  2.31, 1.2,  0.6, 0.82, 1.8, 2.8, 3.76];
S = U*I;
P =     [-1470, -1240, -1023, -800, -558, -270, -80, 110,  400, 650, 880];
Q = sqrt(S.^2 - P.^2);

plot(alpha,P, 'linewidth', 5, alpha, Q, 'linewidth', 5, alpha,S, 'linewidth', 5)
legend('P', 'Q', 'S')
xlabel('theta [°]')
ylabel('P [W], Q [Var], S [VA]')
