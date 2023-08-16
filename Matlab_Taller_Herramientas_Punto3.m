file_path = 'C:\Users\carlo\OneDrive\Documentos\GitHub\ua-imec2001-hc-202320-s1\content\week 1\data\strain-stress.csv';
data = readmatrix(file_path, 'Delimiter', ';', 'DecimalSeparator', ',');
strain = data(:, 1); % Deformación (ε)
stress = data(:, 2); % Esfuerzo (σ)
elastic_equation = @(epsilon) 23268 * epsilon + 11;
plastic_equation = @(epsilon) 26202 * epsilon.^3 - 11347 * epsilon.^2 + 1332 * epsilon + 78;
elastic_stress = elastic_equation(strain);
plastic_stress = plastic_equation(strain);
elastic_limit_index = find(elastic_stress == plastic_stress, 1);
elastic_limit_strain = strain(elastic_limit_index);
elastic_limit_stress = elastic_stress(elastic_limit_index);
disp(['Deformación en el límite elástico: ', num2str(elastic_limit_strain)]);
disp(['Esfuerzo en el límite elástico: ', num2str(elastic_limit_stress)]);
