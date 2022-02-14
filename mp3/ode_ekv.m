function [X,Y] = ode_ekv( m, k, v0, alpha, g, t)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

X = ((m*v0*cos(alpha))/k)*(1- exp((-k/m)*t));
%Y = m*v0*sin(alpha)/k + (g*(m^2))/(k^2) - ((m*v0*sin(alpha))/k + g*(m^2)/(k^2))*exp((-k/m)*t) - (g*m*t)/k;
%min lösning
Y = (-(m*g)/k)*t + (m/k)*( (m*g)/k + v0* sin(alpha))*(1-exp(-(k/m)*t));
%facit lösning
end

