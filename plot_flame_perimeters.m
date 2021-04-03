clear all
close all
clc

BurnID = {'003', '004', '005', '006', '007'};
outputvideo = ['all_flame_analysis_lol.mp4'];
output_video = VideoWriter(outputvideo, 'MPEG-4');
output_video.FrameRate = 10;
open(output_video)


%colors

perimeter_colors = [0 255 255 %c
    255 0 255 %m
    255 255 0 %y
    255 255 255 %w
    0 255 0]; %g


load('videos/perimeters.mat');

for i = 1:size(perimeters,2)
    
    n_frames(i) = size(perimeters(i).expt,3);
    
end

n_frames = max(n_frames);

% make a black frame
black_frame = zeros(1080,1920,3, 'uint8');

% frame = black_frame;
for i = 1:n_frames
    
   frame = black_frame;
    
    for j = 1:size(BurnID,2)
        
        if i < size(perimeters(j).expt,3)
            
            perimeter = perimeters(j).expt(:,:,i);
            
            data_length = find(~perimeter(:,1), 1) -1;
            
            if isempty(data_length) ==1
                data_length = length(perimeter(:,1));
            end
            
            frame(perimeter(1:data_length,1)+(perimeter(1:data_length,2)-1).*1080) = perimeter_colors(j,1);
            frame(perimeter(1:data_length,1)+(perimeter(1:data_length,2)-1).*1080+1080*1920) = perimeter_colors(j,2);
            frame(perimeter(1:data_length,1)+(perimeter(1:data_length,2)-1).*1080+1080*1920*2) = perimeter_colors(j,3);
            
        else
        end
        
        j
        
    end
    
    imshow(frame)
    writeVideo(output_video, frame);
    
    i
    
    
end
close(output_video)