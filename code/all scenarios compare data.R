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

beta0.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[1, ])), nrow = 4, byrow = T)
beta1.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[2, ])), nrow = 4, byrow = T)
beta2.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[3, ])), nrow = 4, byrow = T)
beta3.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[4, ])), nrow = 4, byrow = T)
beta4.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[5, ])), nrow = 4, byrow = T)
beta5.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[6, ])), nrow = 4, byrow = T)
beta6.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[7, ])), nrow = 4, byrow = T)
beta7.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[8, ])), nrow = 4, byrow = T)
beta8.20 <- matrix(unlist(lapply(out.methods.20, function(x) x[9, ])), nrow = 4, byrow = T)

beta0.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[1, ])), nrow = 4, byrow = T)
beta1.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[2, ])), nrow = 4, byrow = T)
beta2.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[3, ])), nrow = 4, byrow = T)
beta3.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[4, ])), nrow = 4, byrow = T)
beta4.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[5, ])), nrow = 4, byrow = T)
beta5.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[6, ])), nrow = 4, byrow = T)
beta6.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[7, ])), nrow = 4, byrow = T)
beta7.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[8, ])), nrow = 4, byrow = T)
beta8.40 <- matrix(unlist(lapply(out.methods.40, function(x) x[9, ])), nrow = 4, byrow = T)

colnames(beta0.20) <- colnames(beta1.20) <- colnames(beta2.20) <- colnames(beta3.20) <- colnames(beta4.20) <- colnames(beta5.20) <- colnames(beta6.20) <- colnames(beta7.20) <- colnames(beta8.20) <- colnames(beta0.40) <- colnames(beta1.40) <- colnames(beta2.40) <- colnames(beta3.40) <- colnames(beta4.40) <- colnames(beta5.40) <- colnames(beta6.40) <- colnames(beta7.40) <- colnames(beta8.40) <- c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT")
rownames(beta0.20) <- rownames(beta1.20) <- rownames(beta2.20) <- rownames(beta3.20) <- rownames(beta4.20) <- rownames(beta5.20) <- rownames(beta6.20) <- rownames(beta7.20) <- rownames(beta8.20) <- rownames(beta0.40) <- rownames(beta1.40) <- rownames(beta2.40) <- rownames(beta3.40) <- rownames(beta4.40) <- rownames(beta5.40) <- rownames(beta6.40) <- rownames(beta7.40) <- rownames(beta8.40) <- c("scenario1", "scenario2", "scenario3", "scenario4")

all.beta.20 <- list(beta0.20, beta1.20, beta2.20, beta3.20, beta4.20, beta5.20, beta6.20, beta7.20, beta8.20)
all.beta.40 <- list(beta0.40, beta1.40, beta2.40, beta3.40, beta4.40, beta5.40, beta6.40, beta7.40, beta8.40)

names(all.beta.20) <- names(all.beta.40) <- c("beta0", "beta0.25", "beta0.5", "beta0.75", "beta1", "beta1.25", "beta1.5", "beta1.75", "beta2")

filename.all.beta.20 <- "E:/GEEMiRKAT/plot/data/all.scenario.comparison.20.rds"
filename.all.beta.40 <- "E:/GEEMiRKAT/plot/data/all.scenario.comparison.40.rds"

saveRDS(all.beta.20, filename.all.beta.20)
saveRDS(all.beta.40, filename.all.beta.40)



