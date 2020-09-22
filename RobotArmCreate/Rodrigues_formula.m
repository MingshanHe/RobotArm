function [e] = Rodrigues_formula(omegamtr,theta)
    e = eye(4,4)+sin(theta)*omegamtr+(1-cos(theta))*(omegamtr^2);
end

