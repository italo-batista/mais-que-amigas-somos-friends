# Load package
library(networkD3)

# Load data
data(MisLinks)
data(MisNodes)

my_nodes.name = c('a', 'b', 'c', 'd', 'e', 'f')
my_nodes.group = c(1, 1, 1, 2, 2, 3)
my_nodes = data.frame(
  name = my_nodes.name,
  group = my_nodes.group
)

my_links.source = c('a', 'a', 'e', 'e')
my_links.target = c('b', 'c', 'd', 'f' )
my_links = data.frame(
  source = my_links.source,
  target = my_links.target,
  value = c(1, 1, 1, 1)
)

forceNetwork(Links = my_links, Nodes = my_nodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8)



#-------------------

source = c('a', 'a', 'e', 'e')
target = c('b', 'c', 'd', 'f')
networkData <- data.frame(source, target)
simpleNetwork(networkData)