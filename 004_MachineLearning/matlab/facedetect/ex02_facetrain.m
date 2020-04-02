clear;clc;close all;

trainingFolder = '.\training\';
trainingROIFolder = '.\trainingROI\';
mkdir(trainingROIFolder);

nFiles = dir(trainingFolder);

for k = 1:length(nFiles)
    if( ~strncmp(nFiles(k).name,'.',1) )
        subNames = nFiles(k).name;
        mkdir( [trainingROIFolder,subNames] )
        nFiles2 = dir( [trainingFolder,subNames] );
        
        for i = 1:length(nFiles2)
            if( ~strncmp(nFiles2(i).name,'.',1) )
                file_extension = nFiles2(i).name(end-2:end);
                
                if( strcmp(file_extension,'jpg') || strcmp(file_extension,'JPG') )
                    img = imread( [trainingFolder,subNames,'\',nFiles2(i).name] );
                    
                    im2 = faceDetector(img);
                    
                    fName = [trainingROIFolder,subNames,'\',nFiles2(i).name];
                    
                    imwrite(im2,fName);
                end;
            end;
        end;
    end;
end;


        
        