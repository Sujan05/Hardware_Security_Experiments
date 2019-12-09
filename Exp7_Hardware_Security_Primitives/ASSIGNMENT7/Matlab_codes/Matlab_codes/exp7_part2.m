clc;
%-----Converting hex to binary from 1st hex file-----
fid = fopen('part2__3_3V.hex');
A = textscan(fid, '%s');
fclose(fid);
A = A{:};
B = A(1:128);
BinaryData = zeros(128,1);
for i = 1:128
        S = B{i}(11);
        U = dec2bin(hex2dec(S))-'0';
        BinaryData(i,1) = U;       
end

%-----Converting hex to binary from 2nd hex file-----
fid2 = fopen('part2__2_7V.hex');
A2 = textscan(fid2, '%s');
fclose(fid2);
A2 = A2{:};
B2 = A2(1:128);
BinaryData2 = zeros(128,1);
for i = 1:128
        S2 = B2{i}(11);
        U2 = dec2bin(hex2dec(S2))-'0';
        BinaryData2(i,1) = U2;       
end


fid=fopen('K1.txt','w');
for i = 1:128
    fprintf(fid, '%d ', BinaryData(i,1));
end
fclose(fid);

HD = 0;
for i = 1:128
        if  BinaryData(i,1) ~= BinaryData2(i,1)
            HD = HD + 1;
        end
end
HD
FracHD= HD/128