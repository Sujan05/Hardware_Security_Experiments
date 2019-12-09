clc;
%-----Converting hex to binary from 1st hex file-----
fid = fopen('ram64_sig_2_7V.hex');
A = textscan(fid, '%s');
fclose(fid);
A = A{:};
B = A(1:64);
BinaryData = zeros(64,8);
for i = 1:64
    for j = 1:2
        S = B{i}(j+9);
        U = dec2bin(hex2dec(S),4)-'0';
        BinaryData(i,4*j-3:4*j) = U;       
    end
end

%-----Converting hex to binary from 2nd hex file-----
fid2 = fopen('ram64_sig_3_3V.hex');
A2 = textscan(fid2, '%s');
fclose(fid2);
A2 = A2{:};
B2 = A2(1:64);
BinaryData2 = zeros(64,8);
for i = 1:64
    for j = 1:2
        S2 = B2{i}(j+9);
        U2 = dec2bin(hex2dec(S2),4)-'0';
        BinaryData2(i,4*j-3:4*j) = U2;
    end
end

fid=fopen('S1_binary.txt','w');
for i = 1:64
    for j = 1:8
    fprintf(fid, '%d ', BinaryData2(i,j));
    end
end
fclose(fid);

fid=fopen('S3_binary.txt','w');
for i = 1:64
    for j = 1:8
    fprintf(fid, '%d ', BinaryData(i,j));
    end
end
fclose(fid);

fid=fopen('S1_hex.txt','w');
for i = 1:64
    for j = 1:2
        S2 = B2{i}(j+9);
        fprintf(fid, '%s ', S2);
    end
end
fclose(fid);

fid=fopen('S3_hex.txt','w');
for i = 1:64
    for j = 1:2
        S = B{i}(j+9);
        fprintf(fid, '%s ', S);
    end
end
fclose(fid);
%------Calculating mean------
num_1 = 0;
for i = 1:64
    for j = 1:8
        if  BinaryData(i,j) == 1
            num_1 = num_1 + 1;
        end
    end
end
mean1 = num_1 / 512

num_2 = 0;
for i = 1:64
    for j = 1:8
        if  BinaryData2(i,j) == 1
            num_2 = num_2 + 1;
        end
    end
end
mean2 = num_2 / 512

%-----hamming distance calculation-----
HD = 0;
for i = 1:64
    for j = 1:8
        if  BinaryData(i,j) ~= BinaryData2(i,j)
            HD = HD + 1;
        end
    end
end

HD