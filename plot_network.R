library(networkD3)
library(dplyr)

# -- For simple network

networkData = read.csv('dados/samplenetwork.csv')
simpleNetwork(networkData)


# -- For more costumizable network

network_links = read.csv('dados/network_links.csv')
network_nodes = read.csv('dados/network_nodes.csv')

forceNetwork(Links = network_links, Nodes = network_nodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 2,  zoom = TRUE,
             fontSize = 12)