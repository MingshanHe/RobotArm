function [omega_] = get_matrix(omega)
%GET_MATRIX �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
omega_=[0 -omega(3) omega(2);
        omega(3) 0 -omega(1);
        omega(2) omega(1) 0;]
end

