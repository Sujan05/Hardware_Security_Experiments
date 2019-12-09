
clc; 
close all; 
clear all;

filenames = dir('C:\Users\Sujan\Documents\MATLAB\Exp9\power_traces\traces\*.mat');
num_files = 80000;
%File_Number = 1;
folder = 'C:\Users\Sujan\Documents\MATLAB\Exp9\power_traces\traces\';
file1 = fullfile(folder,filenames(1).name);
data1 = load(file1);
file2 = fullfile(folder,filenames(2).name);
data2 = load(file2);
plot(data1.y);
figure;
plot(data1.y-data2.y);
samples_size = size(data1.y);
num_sample = samples_size(1);
inverted = cell(64, num_files);
Not_inverted = cell(64, num_files);
Not_inverted_avg = zeros(64, num_sample);
inverted_avg = zeros(64,num_sample);


for i = 1:64
    j = 1;
	k = 1;
    count_inverted = 0; 
    Count_not_inverted = 0; 
	
    
	for x = 1:num_files
        fname = getfield(filenames, {x}, 'name');
        [pathstr,name,ext] = fileparts(fname);
        file_data = strsplit(name, '_');
        Plain_text = file_data(1);
        Cipher_text = file_data(2);
        Plain_text = hexToBinaryVector(Plain_text, 64);
        Cipher_text = hexToBinaryVector(Cipher_text, 64);	
		
		
        input_permutation = @(text) text([      58	50	42	34	26	18	10	2 ...
                                                60	52	44	36	28	20	12	4 ...
                                                62	54	46	38	30	22	14	6 ...
                                                64	56	48	40	32	24	16	8 ...
                                                57	49	41	33	25	17	9	1 ...
                                                59	51	43	35	27	19	11	3 ...
                                                61	53	45	37	29	21	13	5 ...
                                                63	55	47	39	31	23	15	7]);		
										
        
		Z = input_permutation(Plain_text);
        L = Z(1:32);
        R = Z(33:64);
		
		
expansion_function = @(splittext) splittext([    32 1  2  3  4  5  ...
												 4  5  6  7  8  9  ...
												 8  9  10 11 12 13 ...
												 12 13 14 15 16 17 ...
												 16 17 18 19 20 21 ...
												 20 21 22 23 24 25 ...
												 24 25 26 27 28 29 ...
												 28 29 30 31 32 1]);
												 
        
		exp = expansion_function(R);

        
		sub_Key = de2bi(i-1, 6);
        X = bitxor(sub_Key, exp(13:18));
        S_Out = de2bi(S_box_1(X), 4);
        P_Out = ones(1, 32);
        P_Out(9) = S_Out(1);
        P_Out(17) = S_Out(2);
        P_Out(23) = S_Out(3);
        P_Out(31) = S_Out(4);
        R_Final = bitxor(P_Out, L);
		
		
        if(R_Final(9) == R(9))
            Not_inverted{i, k} = fname;
            k = k + 1;
            Count_not_inverted = Count_not_inverted + 1;
        else
            inverted{i, j} = fname;
            j = j + 1;
            count_inverted = count_inverted + 1;
        end
    end
    
	for m = 1:Count_not_inverted
		power_traces = Not_inverted(i, m);
		power_traces = strcat('C:\Users\Sujan\Documents\MATLAB\Exp9\power_traces\traces\', power_traces{1});
		power_traces = load(power_traces);        
        for n = 1:num_sample
            Not_inverted_avg(i, n) = Not_inverted_avg(i, n) + power_traces.y(n);
        end
    end
	
    
    Not_inverted_avg(i, :) = Not_inverted_avg(i, :)/Count_not_inverted;
	
	
     for m = 1:count_inverted
		power_traces = inverted(i, m);
		power_traces = strcat('C:\Users\Sujan\Documents\MATLAB\Exp9\power_traces\traces\', power_traces{1});
		power_traces = load(power_traces);        
        for n = 1:num_sample
            inverted_avg(i, n) = inverted_avg(i, n) + power_traces.y(n);
        end
    end
    
    inverted_avg(i, :) = inverted_avg(i, :)/count_inverted;
	
     trace_Difference(i, :) = Not_inverted_avg(i, :) - inverted_avg(i, :);

end


figure

for i = 1:64

subplot(8,8,i);      
plot(trace_Difference(i, : ));
title(i-1);

end 

function output = S_box_1(x)
	switch(bi2de([x(1) x(6) x(2:5)]))
		case 0
			output =  14;
        case 1
			output =   4;
        case 2
			output =  13;
        case 3
			output =   1;
        case 4
			  output =   2;
        case 5
			  output =  15;
        case 6
			  output =  11;
        case 7
			  output =   8;
        case 8
			  output =   3;
        case 9
			  output =  10;
        case 10
			  output =   6;
        case 11
			  output =  12;
        case 12
			  output =   5;
        case 13
			  output =   9;
        case 14
			  output =   0;
        case 15
			  output =   7;

        case 16
			  output =   0;
        case 17
			  output =  15;
        case 18
			  output =   7;
        case 19
			  output =   4;
        case 20
			  output =  14;
        case 21
			  output =   2;
        case 22
			  output =  13;
        case 23
			  output =   1;
        case 24
			  output =  10;
        case 25
			  output =   6;
        case 26
			  output =  12;
        case 27
			  output =  11;
        case 28
			  output =   9;
        case 29
			  output =   5;
        case 30
			  output =   3;
        case 31
			  output =   8;

        case 32
			  output =   4;
        case 33
			  output =   1;
        case 34
			  output =  14;
        case 35
			  output =   8;
        case 36
			  output =  13;
        case 37
			  output =   6;
        case 38
			  output =   2;
        case 39
			  output =  11;
        case 40
			  output =  15;
        case 41
			  output =  12;
        case 42
			  output =   9;
        case 43
			  output =   7;
        case 44
			  output =   3;
        case 45
			  output =  10;
        case 46
			  output =   5;
        case 47
			  output =   0;

        case 48
			  output =  15;
        case 49
			  output =  12;
        case 50
			  output =   8;
        case 51
			  output =   2;
        case 52
			  output =   4;
        case 53
			  output =   9;
        case 54
			  output =   1;
        case 55
			  output =   7;
        case 56
			  output =   5;
        case 57
			  output =  11;
        case 58
			  output =   3;
        case 59
			  output =  14;
        case 60
			  output =  10;
        case 61
			  output =   0;
        case 62
			  output =   6;
        case 63
			  output =  13;
    end
 end