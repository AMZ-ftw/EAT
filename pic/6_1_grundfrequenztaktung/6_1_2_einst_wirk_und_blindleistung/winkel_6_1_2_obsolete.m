% Aufgabe 6_1_2 P und Q in Abh�ngigkeit des Z�ndwinkels

winkel = [0:0.5:5];
u = 267;
i = [1.64 1.6 1.55 1.52 1.49 1.45 1.44 1.42 1.4 1.4 1.4];
p = [-216 -197 -176 -157 -135 -110 -90 -67 -44 -11 11];

s = u.*i;
q = sqrt(s-abs(p));


i1 = [1 0.88 0.8 0.72 0.625 0.55 0.445 0.34 0.27 0.225 0.21];
phi_grad = [-188 -190 -191 -193 -198 -198 -203 -214 -221 -242 -264];
phi = (phi_grad+360).*pi./180;
u1 = 240;
s1 = u1.*i1;
p1 = s1.*cos(phi);
q1 = sqrt(s1-p1);

figure(1)
plot(winkel,p,winkel,p1);
legend('P','P1');
title('Wirkleistung in Abh�ngigkeit vom Zyndwinkel');
xlabel('Winkel [�]');
ylabel('Wirkleistung [W]');

figure(2)
plot(winkel,q, winkel,q1);
legend('Q','Q1');
title('Scheinleistung in Abh�ngigkeit vom Zyndwinkel');
xlabel('Winkel [�]');
ylabel('Blindleistung [var]');
