
function [output_black,output_white] = masking(inputfile, maskfile)  
%inputfile = 'pears.png'; 


A = imread(inputfile);
B = imread(maskfile);
B = im2uint8(B);

output_black = bitand(A,B);

B1 = not(B);
B1 = im2uint8(B1);
output_white = bitor(A,B1);

outstr1=strcat('black_background_',inputfile);
imwrite(output_black,outstr1);
title(outstr1);
outstr2=strcat('white_background_',inputfile);
imwrite(output_white,outstr2);
title(outstr2);


end
