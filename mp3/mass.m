function [ m, dm ] = mass(t)

    if (0 <= t) && (t <= 10)
        m = 8 - 0.4 * t;
        dm = -0.4;
    else
        m = 4;
        dm = 0;
    end

end

