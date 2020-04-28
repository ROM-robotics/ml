clear;clc;close;
testFolder = 'test';
nFiles = dir(testFolder);
mkdir('testresult');

for k = 1:length(nFiles)
    if(~strncmp(nFiles(k).name,'.',1) )
        fext = nFiles(k).name(end-2:end);
        if( strcmp(fext,'jpg') || strcmp(fext,'JPG') )
            img = imread([testFolder,'\',nFiles(k).name]);
            gray = rgb2gray(img);   
            [label,bbox] = faceRecognize(gray);
            IFaces = insertObjectAnnotation(img,'rectangle',bbox,label,...
                'TextBoxOpacity',0.9,'FontSize',30,'LineWidth',12);
            figure;imshow(IFaces);
            title('Test Image','FontWeight','bold','Fontsize',16,...
                'color','red');
            imwrite(IFaces,['.\testresult\', nFiles(k).name]);
        end;
    end;
end;