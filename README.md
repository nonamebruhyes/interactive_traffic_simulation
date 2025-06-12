# brief intro
In this (ring-road multi-lane) traffic simulation, one can take the wheel of a car for changing lanes, acceleration and deceleration in real time. Also, one can observe the traffic dynamics and stop-and-go waves through plotting the time-space diagram of trajectories

# all you need is Matlab
I used R2023a

# how to use
  1. Change settings in "Z_Config.m"
  2. Type "Main_A_Simulation" in Command Window to run the simulation and interactive interface
  3. Type "Main_B_PlotTrajectory" in Command Window to plot the trajectories
  4. Type "Main_C_ReplayAnimation" in Command Window to replay an animation for the simulation process
  5. Simulation results (data) are saved in the folder "SimulationResult"

# how to interact
  1. Press 'Enter' on the keyboard to enter the interactive mode; Press it again to quit
  2. Press 'Up' - accelerate
  3. Press 'Down' - decelerate
  4. Press 'Left' - Change lane to left
  5. Press 'Right' - Change lane to right

# model
a variant of Cellular Automate model is used. see slides https://github.com/gotrafficgo/traffic_flow_theory_slides
  1. Velocity-Dependent-Randomization (VDR) model -- that is why you see two slowdown probabiblites
  2. Each cell is 1 m long -- that is why you see the simulation is quite efficient and animation is quite smooth
  3. Instantanous lane changing

# still working on convincing myself to release all the code
Any suggestions are welcome!

# what does the simulation look like

# time-space diagram of trajectoris in a lane
![Random Slide](time_space_diagram_of_trajectories_in_one_lane.png)
