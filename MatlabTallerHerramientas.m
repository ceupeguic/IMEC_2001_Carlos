% Ruta al archivo Excel
file_path = 'C:\Users\carlo\OneDrive\Documentos\GitHub\ua-imec2001-hc-202320-s1\content\week 1\data\engines.xlsx';

% Cargar los datos desde el archivo Excel
data = xlsread(file_path);
disp(data);
% Extraer las variables de interés
x = data(:, 1); % Mass (Kg)
y = data(:, 2); % Revolutions per Minute (RPM)

% Realizar la regresión lineal
coefficients = polyfit(x, y, 1); % Realiza un ajuste polinómico de grado 1 (regresión lineal)
slope = coefficients(1); % Pendiente
intercept = coefficients(2); % Intercepto

% Calcular las predicciones
y_pred = polyval(coefficients, x);

% Calcular el coeficiente de determinación (R²)
r_squared = 1 - sum((y - y_pred).^2) / sum((y - mean(y)).^2);

disp(['Pendiente: ', num2str(slope)]);
disp(['Intercepto: ', num2str(intercept)]);
disp(['Coeficiente de determinación (R²): ', num2str(r_squared)]);