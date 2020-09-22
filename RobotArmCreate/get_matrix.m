function [omega_] = get_matrix(omega)
%GET_MATRIX 此处显示有关此函数的摘要
%   此处显示详细说明
omega_=[0 -omega(3) omega(2);
        omega(3) 0 -omega(1);
        omega(2) omega(1) 0;]
end

