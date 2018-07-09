#-----NPS Simulation-----
#Authored by Ian Frantz (www.ianfrantz.com)
#GPL License

outcomes = c(1:3)
nps <- c()    
x <- c()
for (i in 1:3) 
  {
  npssimulation <- sample(outcomes, size = 50, replace = TRUE, prob = c(.60,.20,.20))
    detractor <- subset(npssimulation, npssimulation == 1)
    passive <- subset (npssimulation, npssimulation == 2)
    promoter <- subset(npssimulation, npssimulation == 3)
    totalresp <- sum(length(promoter),length(detractor), length(passive))
    x <- (length(promoter) - length(detractor))
    x <- (x / length(totalresp))
  nps <- append(nps, x)
}
mean(nps)
npsdistribution <- density(nps)
plot (npsdistribution)

