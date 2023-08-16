% Datos de masa y velocidad
m = [3.1, 2.8, 2.9, 3.0, 3.2];
v = [9.9, 10.5, 10.2, 9.6, 9.9];

% Estimación de incertidumbre de masa y velocidad
delta_m = std(m);
delta_v = std(v);

disp(['Incertidumbre de masa (delta_m): ', num2str(delta_m)]);
disp(['Incertidumbre de velocidad (delta_v): ', num2str(delta_v)]);

% Cálculo de energía cinética y su incertidumbre asociada
Ec = 0.5 * m .* v.^2;
delta_Ec = sqrt((0.5 * v.^2 .* delta_m).^2 + (m .* v .* delta_v).^2);

disp('Energía cinética (Ec):');
disp(Ec);
disp('Incertidumbre de energía cinética (delta_Ec):');
disp(delta_Ec);