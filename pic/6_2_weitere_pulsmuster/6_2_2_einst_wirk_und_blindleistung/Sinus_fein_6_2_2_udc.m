Udc_eff = [425, 400,   380,  360,   320,  280,  240,  200];
U =       [388, 367,   347,  330,   291,  264,  221,  184];
I =       [2.3, 1.75,  1.3,  1,     1.6,  2.65,  3.75, 4.9];
S = U.*I;
P =       [-370, -370, -300,  -200, -200, -170, -147, -110 ];
Q = sqrt(S.^2 - P.^2);

plot(Udc_eff,P, 'linewidth', 5, Udc_eff, Q, 'linewidth', 5, Udc_eff,S, 'linewidth', 5)
legend('P', 'Q', 'S')
xlabel('U_{dc} [V]')
ylabel('P [W], Q [Var], S [VA]')