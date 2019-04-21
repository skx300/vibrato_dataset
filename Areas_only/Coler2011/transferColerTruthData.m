function [ groundTruthData ] = transferColerTruthData( labelFile )
%TANSFERCOLERTRUTHDATA This is going to transfer Coler2011 ground truth
%data into my ordinary data format
%   Input:
%   @labelFile: Coler2011's ground truth data file in .txt
%   Output:
%   @groundTruthData: the consistent ground truth data

% file reading
% labelFile = 'FD-dataset\Coler2011\Violin\Violin_2.txt';
try
    fid     = fopen(labelFile,'r');
    tmpData = textscan(fid,'%s%s%s ','CollectOutput',1,'Delimiter','\t');
    tmpData = tmpData{1};
    fclose(fid);
catch
    warning('No label File found!');
    return;
end

%Calculate how many vibratos
vibratoNum = 0;
for i=1:size(tmpData,1)-1
    if strcmp(tmpData{i,3},'vib_on')
        vibratoNum = vibratoNum + 1;
    end
end


% Create the groundTruthData matrix
groundTruthData = zeros(vibratoNum,3);
n = 1; %count the vibrato
for i=1:size(tmpData,1)-1
% for i = 1:1
    
    % read this markers time
    startTimeTemp = tmpData{i,1};
    startTimeTemp   = str2double(regexprep(startTimeTemp,',','.'));

    
    % read next markers time
    stopTimeTemp   = tmpData{i+1,1};
    stopTimeTemp   = str2double(regexprep(stopTimeTemp,',','.'));
    
    % read this markers label
    tmpVal{1} = tmpData{i,3};
    tmpVal{2} = tmpData{i+1,3};
    
    if (strcmp(tmpVal{1},'vib_on'))&&(strcmp(tmpVal{2},'vib_off'))
        groundTruthData(n,1) = startTimeTemp;
        groundTruthData(n,3) = stopTimeTemp - startTimeTemp;
        n = n + 1;
    end
    
end

end

