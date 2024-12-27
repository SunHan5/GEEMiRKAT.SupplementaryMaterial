rm(list = ls())
out.methods.20 <- out.methods.40 <- list()

####################################################################################
###################################### n = 20 #####################################
####################################################################################

for (scenario in 1:4) {
  out1 <- read.csv("E:/GEEMiRKAT/typeIerror/allMethods.csv", row.names = 1)
  out.typeIerror <- out1[, 1]

  position <- paste("E:/GEEMiRKAT/power/scenario", scenario, sep = "")
  setwd(position)
  out2 <- read.csv("allMethods.n=20.csv", row.names = 1)
  out.power <- out2
  out <- t(cbind(out.typeIerror, out.power))
  rownames(out) <- seq(0, 2, 0.25)
  out.methods.20 <- c(out.methods.20, list(out))
}


####################################################################################
###################################### n = 40 #####################################
####################################################################################

for (scenario in 1:4) {
  out1 <- read.csv("E:/GEEMiRKAT/typeIerror/allMethods.csv", row.names = 1)
  out.typeIerror <- out1[, 2]
  
  position <- paste("E:/GEEMiRKAT/power/scenario", scenario, sep = "")
  setwd(position)
  out2 <- read.csv("allMethods.n=40.csv", row.names = 1)
  out.power <- out2
  out <- t(cbind(out.typeIerror, out.power))
  rownames(out) <- seq(0, 2, 0.25)
  out.methods.40 <- c(out.methods.40, list(out))
}

names(out.methods.20) <- names(out.methods.40) <- c("Scenario1", "Scenario2", "Scenario3", "Scenario4")
filename.methods.20 <- "E:/GEEMiRKAT/plot/data/previous.methods.comparison.20.rds"
filename.methods.40 <- "E:/GEEMiRKAT/plot/data/previous.methods.comparison.40.rds"

saveRDS(out.methods.20, filename.methods.20)
saveRDS(out.methods.40, filename.methods.40)



