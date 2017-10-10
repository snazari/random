## Multilayer Graph Generative Model
### Sam Nazari October 2017

To use this code, the minimal input that needs to be specified by a user is:

- number of nodes in each layer
- number of layers, and 
- an interlayer dependency tensor that specifies the desired dependency structure between layers. 

The order of the layers, whenever present, needs to be respected in the interlayer dependency tensor. 

Three useful examples of interlayer dependency tensors are included in 

- ```TemporalDependencyMatrix.m```, 
- ```MultiplexDependencyMatrix.m```, and, 
- ```BlockMultiplexDependencyMatrix.m```

The subroutines have various parameters (which are set to a default parameter choice) that a user can modify as needed. For example, one can:

- vary the number of nodes in each layer 
- vary the minimum and maximum expected degrees in each layer 
- vary the mixing parameter in the planted partition network model
- vary the expected number of communities in the multilayer partition
- control which community labels are present or absent in each layer
- include ordered (e.g., time) and unordered aspects (e.g., social media platforms) in the same multilayer partition
- vary the parameters of the Dirichlet null distribution to alter expected community sizes in the multilayer partition
- use a "null distribution" other than the Dirichlet null distribution in ```PartitionGenerator.m```

Furthermore, a user can use any monolayer network model with a planted partition other than DCSBM by using a function other than ```DCSBMNetworkGenerator.m ``` to generated edges for a given planted partition. 

Note that Version 1.0 of the code only generates (interdependent) intralayer edges for a given multilayer partition. One can modify it to generate interlayer and/or intralayer edges (see Section 4 in [1]).

##References:

[1] Generative benchmark models for mesoscale structure in multilayer networks, M. Bazzi, L. G. S. Jeub, A. Arenas, S. D. Howison, M. A. Porter. arXiv:1608.06196.
