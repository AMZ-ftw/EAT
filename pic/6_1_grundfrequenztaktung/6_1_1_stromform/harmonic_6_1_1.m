% Aufgabe 6.1.1 Harmonische

u = 253;
h1 = 220;

% harmonic in % 1 2 3 5 7 9
h_num = [1 2 3 5 7 9];
h_p = [100 0.1 33.5 20 14 11];
h_v = h1 / 100 .* h_p;

figure(1);
bar(h_num, h_v);
title('Harmonische in Spannungswerte');
xlabel('Harmonische');
ylabel('Spannung');

figure(2);
bar(h_num, h_p);
title('Harmonische in Prozent zur Grundschwingung');
xlabel('Harmonische');
ylabel('Spannung');


