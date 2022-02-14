function [ dz1 ] = funk1( t, z )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

k = 1.5;
m = 8;
g = 9.82; 

dz1 = [ z(2)
        (-k/m)*z(2)
        z(4)
        (-k/m)*z(4) - g];

end

