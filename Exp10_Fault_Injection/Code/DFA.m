clc;
%-----getting data Dj from the txt file-----
fid = fopen('Data_d.txt');
A = textscan(fid, '%s');
fclose(fid);
A = A{:};
C = 'F3EFE64049AC3AAB5030757154F79EF2';
Binary_C = zeros(1, 128);
for i = 1:32
    T = C(i);
    W = dec2bin(hex2dec(T),4)-'0';
    Binary_C(1,4*i-3:4*i) = W;
end
%-----calculating left side C xor Dj and byte position-----
Binary_C_xor_D_byte = zeros(128,9);
for i = 1:128
    V = A{i}(1:32);
    for j = 1:16
        if (V(2*j-1)~= C(2*j-1)) || (V(2*j)~= C(2*j)) 
            Binary_C_xor_D_byte(i,1) = j;
            temp1 = V(2*j-1:2*j);
            temp2 = C(2*j-1:2*j);
            U1=dec2bin(hex2dec(temp1),8)-'0';
            U2=dec2bin(hex2dec(temp2),8)-'0';
            Binary_C_xor_D_byte(i,2:9)=xor(U1,U2);
        end
    end
end
%-----keeping x values-----
x = zeros(256,8);
for i = 1:256
    a = i-1;
    b = dec2bin(a,8)-'0';
    x(i,1:8)= b(1:8);
end
%-----keeping e values-----
e = zeros(8,8);
for i = 1:8
    e(i,i) = 1;
end
%-----calulating M9---------
M9 = zeros(1,128);
for i = 1:16
    M9_byte_position = Binary_C_xor_D_byte(8*(i-1)+1,1);
    for j = 1:8
        temp_c_d = Binary_C_xor_D_byte(8*(i-1)+j,2:9);
        for k = 1:256
            for l = 1:8
                temp_x = x(k,1:8);
                temp_e = e(l,1:8);
                temp_x_xor_e = xor(temp_x,temp_e);
                subbyte_x_e = Sbox(temp_x_xor_e);
                subbyte_x = Sbox(temp_x);
                right_data = xor(subbyte_x,subbyte_x_e);
                if temp_c_d == right_data
                    M9(1,8*(M9_byte_position-1)+1:8*(M9_byte_position-1)+8) = temp_x;
                end
            end
        end
    end
end
M9_hex = '';
for i = 1:16
    temp_M9_byte = M9(1,8*(i-1)+1:8*(i-1)+8);
    M9_hex = strcat(M9_hex,dec2hex(bin2dec(int2str(temp_M9_byte)),2));
end
M9_hex
%-----calculating subbytes of M9---------
subbyte_M9 = zeros(1,128);
for i = 1:16
    subbyte_M9(1,8*(i-1)+1:8*(i-1)+8)=Sbox(M9(1,8*(i-1)+1:8*(i-1)+8));
end
%-----calculating shifted subbytes of M9---------
byte_position=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];
byte_position_shifted = [1 6 11 16 5 10 15 4 9 14 3 8 13 2 7 12];
shifted_subbyte_M9 = zeros(1,128);
for i = 1:16
    shifted_subbyte_M9(1,8*(i-1)+1:8*(i-1)+8)=subbyte_M9(1,8*(byte_position_shifted(i)-1)+1:8*(byte_position_shifted(i)-1)+8);
end
%-----getting K10-------
K10 = xor(shifted_subbyte_M9,Binary_C);
K10_hex = '';
for i = 1:16
    temp_K10_byte = K10(1,8*(i-1)+1:8*(i-1)+8);
    K10_hex = strcat(K10_hex,dec2hex(bin2dec(int2str(temp_K10_byte)),2));
end
K10_hex