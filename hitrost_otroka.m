function [velikost_hitrosti, smer] = hitrost_otroka(dx, dy, t)    % izracuna velikost hitrosti in smer otroka ob času t        dx_ = dx(t);    dy_ = dy(t);        velikost_hitrosti = sqrt(dx_.^2 + dy_.^2);    smer = [dx_; dy_];