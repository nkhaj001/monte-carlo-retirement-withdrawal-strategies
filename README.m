% Retire Broke or Die with Lots of Money ? Withdrawing Strategies
% =================
% 
% This simulation was run in Summer 2024.
% 
% Group 2: Niki Khajavand
% 
% =================
% 
% This code allows one to run a Monte Carlo simulation on different retirement 
% withdrawal rates in order to help potentially find the average rate of 
% successful cases each 3year after retirement. This will give us an optimal 
% withdrawal rate strategy.
% 
% By taking into account previous market performances indexes (used S&P 500,
% NASDAQ, and Dow Jones) and inflation rates, this code finds the mean and 
% standard deviations for each simulation and uses them to randomize future 
% rates during a multi-year period. This simulation tests out a range of 
% withdrawal rates specified by the user. 
% 
% The randomized market performance rates and inflation rates are implemented
% into the initialized account balance and withdrawal rates and shows the
% change of the retirement account balance throughout the specified time period.
% The code will then find the probability of successes by finding the mean of
% the number outcomes that are >=1 per year. Then it will find the probability 
% of failure by finding the mean of the number of outcomes that =0 per year.
% 
% The code then produces two figures: the graphs of all of the simulations for
% all 3 market performance indexes with all of the withdrawal rates and the
% graphs that show the success and failure rates for all 3 market performance 
% indexes with all of the withdrawal rates.
% 
% =================
% 
% Lines to change in order to run the model:
% 
% LINE 4: input the number of years for how long you want the simulation to
% run until in Nyrs (e.g. I want to see the withdrawal rates for somebody who
% is in retirement for 36 years -> Nyrs=36)
% 
% LINE 5: input the number of how many times you want the simulation to run
% into Ns (e.g. I want to run the simulation 1,000 times -> Ns=1000)
% 
% LINE 6: change the range of withdrawal percentage rates in withdrawRate wih
% first percentage in range : step increment : last percentage in range
% (e.g. I want to test out withdrawal rates 4%, 5%, 6%, 7%, and 8% ->
% withdrawRate = 0.04:0.01:0.08)
% 
% LINE 35, LINE 53: change the range of the graph axes with xlim([minimum maximum]) 
% and ylim([minimum maximum]) (e.g. I want my graph to have the x-axis go from
% (0,36) and my y-axis to go from (0,200) -> xlim([0 36]);ylim([0 200]);)




