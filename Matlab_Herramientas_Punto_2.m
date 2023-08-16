%Primero organizamos los datos en una tabla
Y = [0, 6, 12, 20, 26];
X = [655, 645, 620, 560, 455];
%Ahora hacemos una regresion lineal con la funcion especifica polyfit
coefficients = polyfit(X, Y, 1);
slope = coefficients(1);
intercept = coefficients(2);
%Una vez tenemos las variables necesarias podemos encontrar el punto en el
%que se intersecan con los valores deseados de X
x_values_to_predict = [650, 580, 461];
predicted_y_values = slope * x_values_to_predict + intercept;

disp('Valores de Y:');
disp(predicted_y_values);
