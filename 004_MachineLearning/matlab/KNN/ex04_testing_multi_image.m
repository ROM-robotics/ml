clear; clc; close all;
testFolder = 'TestDataSet2';
nFiles = dir(testFolder);
for k = 1:length(nFiles)
    if(~strncmp(nFiles(k).name,'.',1)) %check file name if dot not contain
        fext = nFiles(k).name(end-2:end);
        if(strcmp(fext,'bmp')||strcmp(fext,'jpg')||strcmp(fext,'jpg'))
            img = imread([testFolder,'\',nFiles(k).name]);
            knnclassification(img);
        end;
    end;
end;