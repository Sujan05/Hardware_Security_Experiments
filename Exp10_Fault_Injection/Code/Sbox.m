 function out = Sbox(X)
%X = [0 0 0 0 0 0 0 1];
Y = dec2hex(bin2dec(int2str(X)),2);
S_out = '00';
switch(Y)
        case '00'  
            S_out = '63'; 
		case '01'  
            S_out = '7C'; 
		case '02'  
            S_out = '77'; 
		case '03'  
            S_out = '7B'; 
		case '04'  
            S_out = 'F2'; 
		case '05'  
            S_out = '6B'; 
		case '06'  
            S_out = '6F'; 
		case '07'  
            S_out = 'C5'; 
		case '08'  
            S_out = '30'; 
		case '09'  
            S_out = '01'; 
		case '0A'  
            S_out = '67'; 
		case '0B'  
            S_out = '2B'; 
		case '0C'  
            S_out = 'FE'; 
		case '0D'  
            S_out = 'D7'; 
		case '0E'  
            S_out = 'AB'; 
		case '0F'  
            S_out = '76'; 
		case '10'  
            S_out = 'CA'; 
		case '11'  
            S_out = '82'; 
		case '12'  
            S_out = 'C9'; 
		case '13'  
            S_out = '7D'; 
		case '14'  
            S_out = 'FA'; 
		case '15'  
            S_out = '59'; 
		case '16'  
            S_out = '47'; 
		case '17'  
            S_out = 'F0'; 
		case '18'  
            S_out = 'AD'; 
		case '19'  
            S_out = 'D4'; 
		case '1A'  
            S_out = 'A2'; 
		case '1B'  
            S_out = 'AF'; 
		case '1C'  
            S_out = '9C'; 
		case '1D'  
            S_out = 'A4'; 
		case '1E'  
            S_out = '72'; 
		case '1F'  
            S_out = 'C0'; 
		case '20'  
            S_out = 'B7'; 
		case '21'  
            S_out = 'FD'; 
		case '22'  
            S_out = '93'; 
		case '23'  
            S_out = '26'; 
		case '24'  
            S_out = '36'; 
		case '25'  
            S_out = '3F'; 
		case '26'  
            S_out = 'F7'; 
		case '27'  
            S_out = 'CC'; 
		case '28'  
            S_out = '34'; 
		case '29'  
            S_out = 'A5'; 
		case '2A'  
            S_out = 'E5'; 
		case '2B'  
            S_out = 'F1'; 
		case '2C'  
            S_out = '71'; 
		case '2D'  
            S_out = 'D8'; 
		case '2E'  
            S_out = '31'; 
		case '2F'  
            S_out = '15'; 
		case '30'  
            S_out = '04'; 
		case '31'  
            S_out = 'C7'; 
		case '32'  
            S_out = '23'; 
		case '33'  
            S_out = 'C3'; 
		case '34'  
            S_out = '18'; 
		case '35'  
            S_out = '96'; 
		case '36'  
            S_out = '05'; 
		case '37'  
            S_out = '9A'; 
		case '38'  
            S_out = '07'; 
		case '39'  
            S_out = '12'; 
		case '3A'  
            S_out = '80'; 
		case '3B'  
            S_out = 'E2'; 
		case '3C'  
            S_out = 'EB'; 
		case '3D'  
            S_out = '27'; 
		case '3E'  
            S_out = 'B2'; 
		case '3F'  
            S_out = '75'; 
		case '40'  
            S_out = '09'; 
		case '41'  
            S_out = '83'; 
		case '42'  
            S_out = '2C'; 
		case '43'  
            S_out = '1A'; 
		case '44'  
            S_out = '1B'; 
		case '45'  
            S_out = '6E'; 
		case '46'  
            S_out = '5A'; 
		case '47'  
            S_out = 'A0'; 
		case '48'  
            S_out = '52'; 
		case '49'  
            S_out = '3B'; 
		case '4A'  
            S_out = 'D6'; 
		case '4B'  
            S_out = 'B3'; 
		case '4C'  
            S_out = '29'; 
		case '4D'  
            S_out = 'E3'; 
		case '4E'  
            S_out = '2F'; 
		case '4F'  
            S_out = '84'; 
		case '50'  
            S_out = '53'; 
		case '51'  
            S_out = 'D1'; 
		case '52'  
            S_out = '00'; 
		case '53'  
            S_out = 'ED'; 
		case '54'  
            S_out = '20'; 
		case '55'  
            S_out = 'FC'; 
		case '56'  
            S_out = 'B1'; 
		case '57'  
            S_out = '5B'; 
		case '58'  
            S_out = '6A'; 
		case '59'  
            S_out = 'CB'; 
		case '5A'  
            S_out = 'BE'; 
		case '5B'  
            S_out = '39'; 
		case '5C'  
            S_out = '4A';  
		case '5D'  
            S_out = '4C'; 
		case '5E'  
            S_out = '58'; 
		case '5F'  
            S_out = 'CF'; 
		case '60'  
            S_out = 'D0'; 
		case '61'  
            S_out = 'EF'; 
		case '62'  
            S_out = 'AA'; 
		case '63'  
            S_out = 'FB'; 
		case '64'  
            S_out = '43'; 
		case '65'  
            S_out = '4D'; 
		case '66'  
            S_out = '33'; 
		case '67'  
            S_out = '85'; 
		case '68'  
            S_out = '45'; 
		case '69'  
            S_out = 'F9'; 
		case '6A'  
            S_out = '02'; 
		case '6B'  
            S_out = '7F'; 
		case '6C'  
            S_out = '50'; 
		case '6D'  
            S_out = '3C'; 
		case '6E'  
            S_out = '9F'; 
		case '6F'  
            S_out = 'A8'; 
		case '70'  
            S_out = '51'; 
		case '71'  
            S_out = 'A3'; 
		case '72'  
            S_out = '40'; 
		case '73'  
            S_out = '8F'; 
		case '74'  
            S_out = '92'; 
		case '75'  
            S_out = '9D'; 
		case '76'  
            S_out = '38'; 
		case '77'  
            S_out = 'F5'; 
		case '78'  
            S_out = 'BC'; 
		case '79'  
            S_out = 'B6'; 
		case '7A'  
            S_out = 'DA'; 
		case '7B'  
            S_out = '21'; 
		case '7C'  
            S_out = '10'; 
		case '7D'  
            S_out = 'FF'; 
		case '7E'  
            S_out = 'F3'; 
		case '7F'  
            S_out = 'D2'; 
		case '80'  
            S_out = 'CD'; 
		case '81'  
            S_out = '0C'; 
		case '82'  
            S_out = '13'; 
		case '83'  
            S_out = 'EC'; 
		case '84'  
            S_out = '5F'; 
		case '85'  
            S_out = '97'; 
		case '86'  
            S_out = '44'; 
		case '87'  
            S_out = '17'; 
		case '88'  
            S_out = 'C4'; 
		case '89'  
            S_out = 'A7'; 
		case '8A'  
            S_out = '7E'; 
		case '8B'  
            S_out = '3D'; 
		case '8C'  
            S_out = '64'; 
		case '8D'  
            S_out = '5D'; 
		case '8E'  
            S_out = '19'; 
		case '8F'  
            S_out = '73'; 
		case '90'  
            S_out = '60'; 
		case '91'  
            S_out = '81'; 
		case '92'  
            S_out = '4F'; 
		case '93'  
            S_out = 'DC'; 
		case '94'  
            S_out = '22'; 
		case '95'  
            S_out = '2A'; 
		case '96'  
            S_out = '90'; 
		case '97'  
            S_out = '88'; 
		case '98'  
            S_out = '46'; 
		case '99'  
            S_out = 'EE'; 
		case '9A'  
            S_out = 'B8'; 
		case '9B'  
            S_out = '14'; 
		case '9C'  
            S_out = 'DE'; 
		case '9D'  
            S_out = '5E'; 
		case '9E'  
            S_out = '0B'; 
		case '9F'  
            S_out = 'DB'; 
		case 'A0'  
            S_out = 'E0'; 
		case 'A1'  
            S_out = '32'; 
		case 'A2'  
            S_out = '3A'; 
		case 'A3'  
            S_out = '0A'; 
		case 'A4'  
            S_out = '49'; 
		case 'A5'  
            S_out = '06'; 
		case 'A6'  
            S_out = '24'; 
		case 'A7'  
            S_out = '5C'; 
		case 'A8'  
            S_out = 'C2'; 
		case 'A9'  
            S_out = 'D3'; 
		case 'AA'  
            S_out = 'AC'; 
		case 'AB'  
            S_out = '62'; 
		case 'AC'  
            S_out = '91'; 
		case 'AD'  
            S_out = '95'; 
		case 'AE'  
            S_out = 'E4'; 
		case 'AF'  
            S_out = '79'; 
		case 'B0'  
            S_out = 'E7'; 
		case 'B1'  
            S_out = 'C8'; 
		case 'B2'  
            S_out = '37'; 
		case 'B3'  
            S_out = '6D'; 
		case 'B4'  
            S_out = '8D'; 
		case 'B5'  
            S_out = 'D5'; 
		case 'B6'  
            S_out = '4E'; 
		case 'B7'  
            S_out = 'A9'; 
		case 'B8'  
            S_out = '6C'; 
		case 'B9'  
            S_out = '56'; 
		case 'BA'  
            S_out = 'F4'; 
		case 'BB'  
            S_out = 'EA'; 
		case 'BC'  
            S_out = '65'; 
		case 'BD'  
            S_out = '7A'; 
		case 'BE'  
            S_out = 'AE'; 
		case 'BF'  
            S_out = '08'; 
		case 'C0'  
            S_out = 'BA'; 
		case 'C1'  
            S_out = '78'; 
		case 'C2'  
            S_out = '25'; 
		case 'C3'  
            S_out = '2E'; 
		case 'C4'  
            S_out = '1C'; 
		case 'C5'  
            S_out = 'A6'; 
		case 'C6'  
            S_out = 'B4'; 
		case 'C7'  
            S_out = 'C6'; 
		case 'C8'  
            S_out = 'E8'; 
		case 'C9'  
            S_out = 'DD'; 
		case 'CA'  
            S_out = '74'; 
		case 'CB'  
            S_out = '1F'; 
		case 'CC'  
            S_out = '4B'; 
		case 'CD'  
            S_out = 'BD'; 
		case 'CE'  
            S_out = '8B'; 
		case 'CF'  
            S_out = '8A'; 
		case 'D0'  
            S_out = '70'; 
		case 'D1'  
            S_out = '3E'; 
		case 'D2'  
            S_out = 'B5'; 
		case 'D3'  
            S_out = '66'; 
		case 'D4'  
            S_out = '48'; 
		case 'D5'  
            S_out = '03'; 
		case 'D6'  
            S_out = 'F6'; 
		case 'D7'  
            S_out = '0E'; 
		case 'D8'  
            S_out = '61'; 
		case 'D9'  
            S_out = '35'; 
		case 'DA'  
            S_out = '57'; 
		case 'DB'  
            S_out = 'B9'; 
		case 'DC'  
            S_out = '86'; 
		case 'DD'  
            S_out = 'C1'; 
		case 'DE'  
            S_out = '1D'; 
		case 'DF'  
            S_out = '9E'; 
		case 'E0'  
            S_out = 'E1'; 
		case 'E1'  
            S_out = 'F8'; 
		case 'E2'  
            S_out = '98'; 
		case 'E3'  
            S_out = '11'; 
		case 'E4'  
            S_out = '69'; 
		case 'E5'  
            S_out = 'D9'; 
		case 'E6'  
            S_out = '8E'; 
		case 'E7'  
            S_out = '94'; 
		case 'E8'  
            S_out = '9B'; 
		case 'E9'  
            S_out = '1E'; 
		case 'EA'  
            S_out = '87'; 
		case 'EB'  
            S_out = 'E9'; 
		case 'EC'  
            S_out = 'CE'; 
		case 'ED'  
            S_out = '55'; 
		case 'EE'  
            S_out = '28'; 
		case 'EF'  
            S_out = 'DF'; 
		case 'F0'  
            S_out = '8C'; 
		case 'F1'  
            S_out = 'A1'; 
		case 'F2'  
            S_out = '89'; 
		case 'F3'  
            S_out = '0D'; 
		case 'F4'  
            S_out = 'BF'; 
		case 'F5'  
            S_out = 'E6'; 
		case 'F6'  
            S_out = '42'; 
		case 'F7'  
            S_out = '68'; 
		case 'F8'  
            S_out = '41'; 
		case 'F9'  
            S_out = '99'; 
		case 'FA'  
            S_out = '2D'; 
		case 'FB'  
            S_out = '0F'; 
		case 'FC'  
            S_out = 'B0'; 
		case 'FD'  
            S_out = '54'; 
		case 'FE'  
            S_out = 'BB'; 
		case 'FF'  
            S_out = '16'; 
end
out = dec2bin(hex2dec(S_out),8)-'0';
 end
