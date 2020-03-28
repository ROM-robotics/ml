clear; clc; close;
testFolder = 'test';
nFiles = dir(testFolder);
for k = 1:length(nFiles)
    if(~strncmp(nFiles(k).name,'.',1))
        fext = nFiles(k).name(end-2:end);
        if(strcmp(fext,'bmp')||strcmp(fext,'jpg')||strcmp(fext,'jpg'))
            img = imread([testFolder,'\',nFiles(k).name]);
             HSVRecognise(img);
            colorRecognise(img);
            %colorDetection(img);
        end;
    end;
end;