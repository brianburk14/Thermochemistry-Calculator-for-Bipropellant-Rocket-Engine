# Thermochemistry-Calculator-for-Bipropellant-Rocket-Engine
This program is intended to solve the propulsion parameters during a chemical rocket propellant performance. The parameters that will be used as input are the reactants and products, along with their mole numbers and physical states. They'll be used to calculate the combustion temperature and heat generated from the reaction. These parameters are calculated by using Hess's Law. The program solves the combustion temperature using an iterative process, captures the iterations of the temperature and heat and interpolates to get an acceptable result of what the combustion temperature should be.

This program will check to make sure the chemical reaction equation is balanced by calculating the mass of the reactance and the mass of the products and see how they compare and if they satisfy a tolerance of 0.01. Since a data sheet was used, the app will only be able to solve certain chemical reactions. And not all of the molecules have properites defined in their liquid and/or solid phase. Aside from that, this program should be useful in calculating rocket propulsion problems involved in thermochemistry.

I've also made this program into an app with MATLAB App Designer if it's easier for you to use the program since the main MATLAB program has inputs that start on like the 60th line-ish.

## Requirements
MATLAB (tested on version R2023a)
