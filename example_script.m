% Example use of DirichletDCSBMBenchmark for multiplex and temporal multilayer networks
%
% References:
% 
%       [1] Generative benchmark models for mesoscale structure in multilayer 
%       networks, M. Bazzi, L. G. S. Jeub, A. Arenas, S. D. Howison, M. A. 
%       Porter. arXiv1:608.06196.
%
% Citation: 
%
%       If you use this code, please cite as
%       Lucas G. S. Jeub and Marya Bazzi
%       "A generative model for mesoscale structure in multilayer networks 
%       implemented in MATLAB," https://github.com/MultilayerBenchmark/MultilayerBenchmark (2016).



% EXAMPLE 1: Multiplex
% Multiplex example with uniform interlayer dependencies between all pairs
% of layers (interlayer depencency tensor as in FIG 3b of [1] and model parameter
% choices as in FIG 5 and FIG 8 of [1] for specific values of p and mu) 

[A,S]=DirichletDCSBMBenchmark(n_nodes,n_layers,L,...
'UpdateSteps',200,'theta',1,'communities',com,'q',1,...
'exponent',-2,'kmin',3,'kmax',150,'mu',mu,'maxreject',100);
a1 = A{1};
a2 = A{2};
a3 = A{3};
a4 = A{4};
A1 = full(a1);
A2 = full(a2);
A3 = full(a3);
A4 = full(a4);
save('A1','A1')
save('A2','A2')
save('A3','A3')
save('A4','A4')
save('L','L')
save('S','S')
save('p','p')
save('mu','mu')
save('n_layers','n_layers')
save('n_nodes','n_nodes')
save('com','com')
cm1=['!scp A*.mat ma01-5200-0022:/disk1/maa/sam/random']
cm2=['!scp mu.mat ma01-5200-0022:/disk1/maa/sam/random']
cm3=['!scp p.mat ma01-5200-0022:/disk1/maa/sam/random']
cm4=['!scp S.mat ma01-5200-0022:/disk1/maa/sam/random']
cm5=['!scp L.mat ma01-5200-0022:/disk1/maa/sam/random']
cm6=['!scp com.mat ma01-5200-0022:/disk1/maa/sam/random']
cm7=['!scp n_nodes.mat ma01-5200-0022:/disk1/maa/sam/random']
cm8=['!scp n_layers.mat ma01-5200-0022:/disk1/maa/sam/random']
eval(cm1)
eval(cm2)
eval(cm3)
eval(cm4)
eval(cm5)
eval(cm6)
eval(cm7)
eval(cm8)

disp('Completed!')

% EXAMPLE 2: TEMPORAL 
% Temporal example with uniform interlayer dependencies between successive
% layers (interlayer depencency tensor as in FIG 3a of [1] and model parameter
% choices as in FIG 4 and FIG 9 of [1] for specific values of p and mu)

% n_layers = 10;
% n_nodes = 150;
% p = 0.95; mu = 0.1;
% 
% L = TemporalDependencyMatrix(n_layers,p);
% [A,S]=DirichletDCSBMBenchmark(n_nodes,n_layers,L,...
% 'UpdateSteps',1,'theta',1,'communities',5,'q',1,...
% 'exponent',-2,'kmin',3,'kmax',30,'mu',mu,'maxreject',100);


% EXAMPLE 3: TEMPORAL WITH CHANGE POINTS
% Temporal example with nonuniform interlayer dependencies between successive
% layers (interlayer depencency tensor as in FIG 3a of [1] and model parameter
% choices as in FIG 10 of [1] for specific values of p and mu) 

% n_layers = 100;
% n_nodes = 150;
% 
% p = 0.95; p_change = 0; 
% p_CP = p*ones(n_layers-1,1);
% p_CP(25) = p_change; p_CP(50) = p_change; p_CP(75) = p_change;
% 
% L = diag(p_CP,1);
% 
% [A,S]=DirichletDCSBMBenchmark(n_nodes,n_layers,L,...
% 'UpdateSteps',1,'theta',1,'communities',5,'q',1,...
% 'exponent',-2,'kmin',3,'kmax',30,'mu',mu,'maxreject',100);
%         
        
