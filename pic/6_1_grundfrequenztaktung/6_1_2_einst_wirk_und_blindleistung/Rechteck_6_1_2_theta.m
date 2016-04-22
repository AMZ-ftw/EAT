% P und Q total, nicht die harmonischen

theta = [-25,   -20,   -15,  -10,  -5,   0,    5,    10,   15,   20,   25];
U =     260;
I =     [5.8,   5.2,   4.1,  3.3,  2.5,  1.7,  1.37, 1.63, 2.4,  3.2   4];
P =     [-1310, -1170, -900, -700, -480, -250, -20,  200,  415,  640,  840];
S =     U*I; 
Q = sqrt(S.^2 - P.^2);

figure(1)
plot(theta,P, 'linewidth', 5, theta, Q, 'linewidth', 5, theta,S, 'linewidth', 5)
legend('P', 'Q', 'S')







% P1 und Q1 

theta = [-25,   -20,   -15,    -10,    -5,    0,    5,    10,    15,    20,    25];
U1 = 235;
I1 =    [5.67,  4.77,  3.8,    2.9,    1.95,  1,    0.1,  0.9,   1.8,   2.76,  3.7];
angle=  [-193,  - 190, -188,   -185,   -183,  -182  -250, -346,  -349,  -348,  -345];
phi = (angle+360).*(pi/180);
S1 = U1*I1;
P1 = S1.*cos(phi);
Q1 = S1.*sin(phi);

figure(2)
plot(theta,P1, 'linewidth', 5, theta, Q1, 'linewidth', 5, theta,S1, 'linewidth', 5)
legend('P1', 'Q1', 'S1')






figure(3)
plot(theta, P, 'linewidth', 5, theta, P1, 'linewidth', 5)
legend('P', 'P1')


figure(4)
plot(theta, Q, 'linewidth', 5, theta, Q1, 'linewidth', 5)
legend('Q', 'Q1')