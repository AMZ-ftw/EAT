% Aufgabe 6_1_2 P und Q in Abhängigkeit der Gleichspannung

u_dc = [232:20:372];
u = [325 307 288 270 253 235 218 202];
i = [3.36 2.72 2.16 1.77 1.68 1.8 2.3 2.84];
p = [-370 -338 -300 -262 -234 -230 -178 -157];

s = u.*i;
q = sqrt(s.^2-p.^2);


u1 = [293 277 259 241 225 210 195 180];
i1 = [2.8 2.18 1.55 1.14 1.17 1.6 2.1 2.8];
p1 = [-368 -334 -305 -273 -244 -206 -185 -160];
s1 = u1.*i1;
q1 = sqrt(s1.^2-p1.^2);

figure(1)
plot(u_dc,p,u_dc,p1,'LineWidth',5);
legend('P','P1');
title('Wirkleistung in Abhängigkeit von Udc');
xlabel('Gleichspannung [V]');
ylabel('Wirkleistung [W]');

figure(2)
plot(u_dc,q, u_dc,q1,'LineWidth',5);
legend('Q','Q1');
title('Scheinleistung in Abhängigkeit von Udc');
xlabel('Gleichspannung [V]');
ylabel('Blindleistung [var]');
