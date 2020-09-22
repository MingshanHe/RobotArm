function [omegamtr] = get_S_matrix(omega,v)
    omegamtr = [0 -omega(3) omega(2) v(1);
                omega(3) 0 -omega(1) v(2);
                -omega(2) omega(1)  0 v(3);
                0        0         0    0;];
end