function Main_B_PlotTrajectory

    clear;
    clc;
    
    %% configuration
    Config = Z_Setup('B');


    %% simulation record
    load([Config.pathOfData num2str(Config.VehNumber_Lane) '.mat'], 'Record_All');
        
    
    %%
    for laneID = 1:1:Config.LaneNumber
    
        figure(laneID);    
        for vehID = 1:1:Config.VehNumber_Lane*Config.LaneNumber

            [~, c] = find(Record_All.LaneID(vehID, :) == laneID);
            Position_Lane = Record_All.Position(vehID, c);
            
            Time = 1:1:Config.TimeMax;
            Time_Lane = Time(1,c);
                                    
            colorOfVehicle = [rand() rand() rand()];
            plot(Time_Lane, Position_Lane, '.', 'color', colorOfVehicle, 'markersize', 1); hold on;
    
        end        

        %%
        set(gca, 'FontSize', 18);
        xlabel('Time');
        ylabel('Position (m)');  
        set(gcf,'Position',[50,400,1800,400]);
        
    end

end




