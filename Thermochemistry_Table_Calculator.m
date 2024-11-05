%Inputs start on line 69 and end at line 76

clc; clear; close all;
%Table Data
T = [298, 400:100:4000];
H2 = [0, 2.909, 5.831, 8.761, 11.704, 14.659, 17.631, 20.641, 23.680, 26.761,...
    29.880, 33.048, 36.628, 39.512, 42.806, 46.142, 49.512, 52.928, 56.369,...
    59.839, 63.343, 66.871, 70.348, 74.021, 77.617, 81.250, 84.900, 88.576, ...
    92.264, 95.972, 99.702, 103.444, 107.208, 110.979, 114.763, 118.573,...
    122.759, 126.220];
H2O = [0, 3.395, 6.869, 10.448, 14.149, 17.966, 21.910, 25.987, 30.185, 34.522,...
    38.980, 43.530, 48.219, 52.995, 57.858, 62.815, 67.838, 72.937, 78.106,...
    83.339, 88.622, 93.959, 99.346, 104.780, 110.251, 115.768, 121.310, 126.899,...
    132.520, 138.163, 143.839, 149.536, 155.267, 161.019, 166.791, 172.593,...
    178.403, 184.226];
CO = [0, 2.926, 5.877, 6.895, 11.980, 15.132, 18.360, 21.646, 25.003, 28.402,...
    31.839, 35.317, 38.825, 42.362, 45.929, 49.516, 53.116, 56.737, 60.375,...
    64.021, 67.683, 71.350, 75.026, 78.726, 82.426, 86.131, 89.848, 93.570,... 
    97.291, 101.033, 104.767, 108.514, 112.260, 116.015, 119.774, 123.537,...
    127.305, 131.076];
CO2 = [0, 3.943, 8.246, 12.859, 17.715, 22.776, 28.013, 33.388, 38.892, 44.493,...
    50.186, 55.954, 61.785, 67.679, 73.619, 79.605, 85.625, 91.682, 97.776,...
    103.896, 110.050, 116.203, 122.407, 128.632, 134.864, 141.118, 147.393,...
    153.676, 159.997, 166.326, 172.647, 179.010, 158.360, 191.752, 198.132,...
    204.536, 210.949, 217.379];
O2 = [0, 3.018, 6.057, 9.222, 11.851, 15.815, 19.230, 22.692, 26.280, 29.867,...
    33.446, 37.034, 40.621, 44.338, 48.059, 51.777, 55.494, 59.215, 63.045,...
    66.867, 70.697, 74.519, 78.349, 82.293, 86.236, 90.179, 94.126, 98.065,...
    102.071, 106.090, 110.125, 114.177, 118.242, 122.311, 126.409, 130.511,...
    134.638, 138.778];
N2 = [0, 2.918, 5.856, 8.841, 11.888, 14.994, 18.180, 21.424, 24.727, 28.084,...
    31.479, 34.920, 38.398, 41.898, 45.435, 48.989, 52.568, 56.164, 59.772,...
    63.388, 67.030, 70.672, 74.335, 78.010, 81.694, 85.390, 89.095, 92.804,...
    96.521, 100.242, 103.968, 107.702, 111.440, 115.182, 118.933, 122.679,...
    126.438, 130.201];

%Table Data
Al_s = [0, "Al", "s"];%
Al2O3 = [-1670.53, "Al2O3", "?"];%
C_s = [0, "C", "s"];%
CO_g = [-110.59, "CO", "g"];
CO2_g = [-393.68, "CO2", "g"];
C_g = [718.70, "C", "g"];%
CH4_g = [-74.90, "CH4", "g"];%
CH3OH_l = [-238.76, "CH3OH", "l"];%
C2H5OH_l = [-277.77, "C2H5OH", "l"];%
H2_g = [0, "H2", "g"];
H2_l = [-7.03, "H2", "l"];
H_g = [218.04, "H", "g"];%
H2O_g = [-241.93, "H2O", "g"];
H2O_l = [-285.96, "H2O", "l"];
H2O2_l = [-187.69, "H2O2", "l"];%
HNO3_l = [-173.08, "HNO3", "l"];%
N2_g = [0, "N2", "g"];
N_g = [472.71, "N", "g"];%
NH3_l = [-65.63, "NH3", "l"];%
NH3_g = [-46.21, "NH3", "g"];%
N2H4_l = [50.48, "N2H4", "l"];%
N2O4_l = [-20.13, "N2O4", "l"];%
NH4ClO4_s = [-290.58, "NH4ClO4", "s"];%
HF_g = [-268.73, "HF", "g"];%
HCl_g = [-92.34, "HCl", "g"];%
F2_l = [-12.68, "F2", "l"];%
O2_g = [0, "O2", "g"];
O2_l = [-9.42, "O2", "l"];

try
    %INPUTS
    reactant1 = H2_l;   %INPUT
    reactant2 = O2_l;   %INPUT
    product1 = H2O_g;   %INPUT
    product2 = H2_g;    %INPUT
    mole_number_reactant1 =  5;    %INPUT
    mole_number_reactant2 = 1;   %INPUT
    mole_number_product1 = 2;   %INPUT
    mole_number_product2 =  3;   %INPUT
    %END INPUTS
catch
    error("Please enter your reactants and products that are from the tables.");
end

fprintf("Chemical Formula:\n");
fprintf(mole_number_reactant1 + reactant1(2) + "(" + reactant1(3) + ") + " + mole_number_reactant2 +...
    reactant2(2) + "(" + reactant2(3) + ") = " + mole_number_product1 + product1(2) + "(" + product1(3) +...
    ") + " + mole_number_product2 + product2(2) + "(" + product2(3) + ")" + "\n\n");

reactant1 = double(H2_l(1));
reactant2 = double(O2_l(1));
product1 = double(H2O_g(1));
product2 = double(H2_g(1));

switch product1
    case {double(H2O_g(1)), double(H2O_l(1))}
        product1_no_state = H2O;
    case {double(H2_g(1)), double(H2_l(1))}
        product1_no_state = H2;
    case double(CO_g(1))
        product1_no_state = CO;
    case double(CO2_g(1))
        product1_no_state = CO2;
    case {double(O2_g(1)), double(O2_l(1))}
        product1_no_state = O2;
    case double(N2_g(1))
        product1_no_state = N2;
end

switch product2
    case {double(H2O_g(1)), double(H2O_l(1))}
        product2_no_state = H2O;
    case {double(H2_g(1)), double(H2_l(1))}
        product2_no_state = H2;
    case double(CO_g(1))
        product2_no_state = CO;
    case double(CO2_g(1))
        product2_no_state = CO2;
    case {double(O2_g(1)), double(O2_l(1))}
        product2_no_state = O2;
    case double(N2_g(1))
        product2_no_state = N2;
end

enthalpy_change = (mole_number_product1*product1 + mole_number_product2*product2 - ...
    (mole_number_reactant1*reactant1 + mole_number_reactant2*reactant2));

heat_generated = -enthalpy_change;
Q_required = zeros(length(T), 1);

for i = 1:length(T)
    Q_required(i) = mole_number_product1*product1_no_state(i) + mole_number_product2*product2_no_state(i);
end

[heat_generated_value, iteration] = min(abs(abs(Q_required) - abs(heat_generated)));
Q_required_modified = Q_required;
Q_required_modified(iteration) = [];
[heat_generated_value2, iteration2] = min(abs(abs(Q_required_modified) - abs(heat_generated)));

if(iteration2 == iteration)
    iteration2 = iteration2 + 1;
end

Q1 = Q_required(iteration);
T1 = T(iteration);
Q2 = Q_required(iteration2);
T2 = T(iteration2);

T_final = T1 + (heat_generated - Q1)*(T2 - T1)/(Q2 - Q1);
fprintf("Heat of Reaction: " + enthalpy_change + " kJ\n");
fprintf("Chamber Temperature: " + T_final + " K\n");