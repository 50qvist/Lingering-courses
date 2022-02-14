function [ dz2 ] = funk_2( t, z )

c = 0.05;
g = 9.82; 
    
[m, dm] = mass(t);
    
[theta] = jesus_take_the_wheel(t);

 km = 700;
    ux = km * cos(theta);
    uy = km * sin(theta);

dz2 = [ z(2)
        (-c/m)*sqrt((z(2)^2)+(z(4)^2))*z(2) + (dm/m)*ux
        z(4)
        (-c/m)*sqrt((z(2)^2)+(z(4)^2))*z(4) + (dm/m)*uy - g
       ];

end

