clc;
%-----Converting hex to binary from 1st hex file-----
fid = fopen('part4_n3_RO_30.hex');
A = textscan(fid, '%s');
fclose(fid);
A = A{:};
B = A(1:6250);
BinaryData = zeros(100000,1);
 for i = 1:6250
     for j = 1:4
         S = B{i}(j+9);
         U = dec2bin(hex2dec(S),4)-'0';
         for k = 1:4
            BinaryData((((i-1)*16)+((j-1)*4)+k),1) = U(k); 
         end
     end
 end
 
 %-----Converting hex to binary from 1st hex file-----
fid2 = fopen('part4_3_3V.hex');
A2 = textscan(fid2, '%s');
fclose(fid2);
A2 = A2{:};
B2 = A2(1:6250);
BinaryData2 = zeros(100000,1);
 for i = 1:6250
     for j = 1:4
         S2 = B2{i}(j+9);
         U2 = dec2bin(hex2dec(S2),4)-'0';
         for k = 1:4
            BinaryData2((((i-1)*16)+((j-1)*4)+k),1) = U2(k); 
         end
     end
 end
 
 %------Calculating mean------
num_1 = 0;
for i = 1:100000
        if  BinaryData(i,1) == 1
            num_1 = num_1 + 1;
        end
end
num_1
mean1 = num_1 / 100000

HD = 0;
for i = 1:100000
        if  BinaryData(i,1) ~= BinaryData2(i,1)
            HD = HD + 1;
        end

end
HD
fracHD = HD/100000
fid=fopen('TRNG_n3.txt','w');
for i = 1:100000
    fprintf(fid, '%d ', BinaryData(i,1));
end
fclose(fid);