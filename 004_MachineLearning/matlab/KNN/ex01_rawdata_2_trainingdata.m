clear; clc; close all;
testFolder = 'TestDataSet1';
nFiles = dir(testFolder);
for k = 1:length(nFiles)
    if(~strncmp(nFiles(k).name,'.',1)) %check file name if dot not contain
        fext = nFiles(k).name(end-2:end);
        if(strcmp(fext,'bmp')||strcmp(fext,'jpg')||strcmp(fext,'png'))
            img = imread([testFolder,'\',nFiles(k).name]);
            ROI = extROI(img);
            fname = ['pyaesoan','\',num2str(k),'.jpg'];
            imwrite(ROI,fname);
        end;
    end;
end;