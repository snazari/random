function P=TemporalDependencyMatrix(n_layers,p)
% Generate a uniform temporal dependency matrix
%
% Input: 
%   
%   n_layers: number of layers
%
%   p: probability for a state node to copy its community assignment from
%       corresponding state node in previous layer
%
% Output:
%
%   P: dependency matrix for use with PartitionGenerator
%
% Note that p<=1

% Version: v1.0-alpha1
% Date: Mon 10 Oct 2016 16:12:35 EDT
% Author: Lucas Jeub
% Email: ljeub@iu.edu

if p>1||p<0
    error('MultilayerBenchmark:TemporalDependencies:p',...
        'Copying probability p out of range')
end

P=zeros(n_layers);

for i=1:n_layers-1
    P(i,i+1)=p;
end

end