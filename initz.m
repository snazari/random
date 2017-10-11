%% init 
clear
clc
n_layers=4;
n_nodes=500;
com = 5;
p = 0.95; mu = 0.05;
L = MultiplexDependencyMatrix(n_layers,p)
