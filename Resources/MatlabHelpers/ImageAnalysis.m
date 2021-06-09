clc;
clear;
close all;

WORKING_DIR = "../";
IMAGES_DIR  = append(WORKING_DIR, "Images/");
ROM_DIR     = append(WORKING_DIR, "ROM_Init/");

image_files = dir(IMAGES_DIR);
image_files = image_files(3:end);

number_of_images = length(image_files);

fileID = fopen (append(ROM_DIR, 'ROM_IMAGES.mif'), 'w');
fprintf(fileID, 'DEPTH = %d;\n', 100*100*number_of_images);
fprintf(fileID, 'WIDTH = %d;\n', 8*3);
fprintf(fileID, 'ADDRESS_RADIX = UNS;\n');
fprintf(fileID, 'DATA_RADIX = HEX;\n');
fprintf(fileID, 'CONTENT\nBEGIN\n');

for j = 1:number_of_images
    target_file = append(image_files(j).folder, '\', image_files(j).name);
    [target_path, target_name, target_ext] = fileparts(target_file);
    I = imread(target_file);
	
    %Extract RED, GREEN and BLUE components from the image
    R = I(:,:,1);			
    G = I(:,:,2);
    B = I(:,:,3);
    
    %save variable COLOR to a file in HEX format for the chip to read


    for i = 1:size(R(:), 1)
        fprintf (fileID, '%d : %02x%02x%02x;\n', i+100*100*(j-1)-1, R(i), G(i), B(i)); % COLOR (dec) -> print to file (hex)
    end

end

fprintf (fileID, '%s', "END;"); % COLOR (dec) -> print to file (hex)
fclose (fileID);
