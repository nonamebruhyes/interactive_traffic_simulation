function Config = Z_Setup(flag_interaction)

    % saving
    Config.flagSaveData       = 1;          % whether to save the data when simulation ends   
    Config.flagSaveAnimation = 0;      % whether to save the animation when simulation ends     


    %% for simulation  
    Config.VehNumber_Lane     = 70;         % vehicle number per lane
    Config.AllowLC            = 1;          % whether to allow lane changes, [0] no lane change
    Config.RoadLength         = 2000;       % m
    Config.TimeMax            = 1500;       % s     simulation time
    Config.SpeedInitial       = 0;          % m/s   initial speed
    Config.Acceleration       = 1;          % m/s^2
    Config.ProbChangeLane     = 0.7;        % probability of changing lanes if feasible 
    Config.SpeedMax           = 25;         % m/s   max speed (speed limit)
    Config.Slowdown.Magnitude = 1;          % cell  when slowing down with probability, how many cells


    Config.Slowdown.Prob_LowSpeed  = 0.5;   % randomly-slowdown probability for low speed
    Config.Slowdown.Prob_Speed     = 0.05;  % probability for other speed
    Config.SpeedThreshold = 1;              % <= the threshold, use Prob_LowSpeed


    %% for interaction
    Config.FocusedVehicle.Deceleration_Value = 1; % how many cells when press bottom for deceleration
    Config.FocusedVehicle.Acceleration_Value = 1; % how many cells when press bottom for acceleration
    

    %% for animation    
    % Config.animation_speed = 0.01;   % adjust this value to control the animation speed
    Config.animation_speed = 0.05;   % adjust this value to control the animation speed
    

    %% folder and paths
    mainFullPath = mfilename('fullpath');
    Config.root = fileparts(mainFullPath);
    Config.pathOfData = [Config.root '/SimulationResult/'];    
    

    %%
    Config = GetConfig_Fixed(Config, flag_interaction);    

    

end






















