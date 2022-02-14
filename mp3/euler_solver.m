function [ t, z ] = euler_solver( fun, tspan, z0, n )
%UNTITLED6 Summary of this function goes here

%Algoritm 1 Eulers metod
    t=linspace(tspan(1),tspan(2),n);
    z=zeros(length(z0),length (t));
    h=(t(2)-t(1));
    z(:,1)=z0;

    for i= 1:n-1
        z(:,i+1) = z(:,i) + h * fun(t(i),z(:,i));
    end

end


