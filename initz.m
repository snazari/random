%% init 
clear
clc
n_layers=4;
n_nodes=500;
p = 0.95; mu = 0.1;
L = MultiplexDependencyMatrix(n_layers,p)
