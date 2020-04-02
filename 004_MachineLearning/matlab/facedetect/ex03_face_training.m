clear;close all;clc;
train = '.\trainingROI\';
nFiles = dir(train);

for i = 1:length(nFiles)
    if( ~strncmp( nFiles(i).name,'.',1 ) )
        folderName = nFiles(i).name;
        nFiles2 = dir( [train,folderName] );
        K = 250 * 250;  % rows
        N = length(nFiles2) - 2;  % columns
        
        im_zeros = zeros(K,N);
        for n = 1:length(nFiles2)
            if( ~strncmp(nFiles2(n).name,'.',1) )
                file_extension = nFiles2(n).name(end-2:end);
                if(strcmp(file_extension,'jpg') || strcmp(file_extension,'JPG') )
                    img = imread( [train,folderName,'\',nFiles2(n).name] );
                    gray = rgb2gray(img);
                    fv = gray(:);
                    im_zeros(:,n-2)=fv;
                end;
            end;
        end;
        matrix_name = [folderName,'.mat'];
        save(matrix_name,'im_zeros');
    end;
end;
        