########################################################################################
######################################## n = 20 ########################################
########################################################################################
rm(list = ls())
for (scenario in 1:4) {

  ############################################################
  #######################  typeIerror  #######################
  ############################################################
  
  filename.GEEMiRKAT.AR.typeIerror <- paste("E:/GEEMiRKAT/typeIerror/GEEMiRKAT.AR.typeIerror.csv")
  filename.GEEMiRKAT.EX.typeIerror <- paste("E:/GEEMiRKAT/typeIerror/GEEMiRKAT.EX.typeIerror.csv")
  filename.GEEMiRKAT.IN.typeIerror <- paste("E:/GEEMiRKAT/typeIerror/GEEMiRKAT.IN.typeIerror.csv")
  out.GEEMiRKAT.AR.typeIerror <- read.csv(filename.GEEMiRKAT.AR.typeIerror, row.names = 1)[, 1]
  out.GEEMiRKAT.EX.typeIerror <- read.csv(filename.GEEMiRKAT.EX.typeIerror, row.names = 1)[, 1]
  out.GEEMiRKAT.IN.typeIerror <- read.csv(filename.GEEMiRKAT.IN.typeIerror, row.names = 1)[, 1]
  
  ############################################################
  ##########################  power  #########################
  ############################################################
  
  filename.GEEMiRKAT.AR.power <- paste("E:/GEEMiRKAT/power/scenario", scenario, "/GEEMiRKAT.AR.power.n=20.csv", sep = "")
  filename.GEEMiRKAT.EX.power <- paste("E:/GEEMiRKAT/power/scenario", scenario, "/GEEMiRKAT.EX.power.n=20.csv", sep = "")
  filename.GEEMiRKAT.IN.power <- paste("E:/GEEMiRKAT/power/scenario", scenario, "/GEEMiRKAT.IN.power.n=20.csv", sep = "")
  out.GEEMiRKAT.AR.power <- t(read.csv(filename.GEEMiRKAT.AR.power, row.names = 1))
  out.GEEMiRKAT.EX.power <- t(read.csv(filename.GEEMiRKAT.EX.power, row.names = 1))
  out.GEEMiRKAT.IN.power <- t(read.csv(filename.GEEMiRKAT.IN.power, row.names = 1))
  
  out.GEEMiRKAT.AR <- rbind(out.GEEMiRKAT.AR.typeIerror, out.GEEMiRKAT.AR.power)
  out.GEEMiRKAT.EX <- rbind(out.GEEMiRKAT.EX.typeIerror, out.GEEMiRKAT.EX.power)
  out.GEEMiRKAT.IN <- rbind(out.GEEMiRKAT.IN.typeIerror, out.GEEMiRKAT.IN.power)
  out.GEEMiRKAT <- rbind(out.GEEMiRKAT.AR, out.GEEMiRKAT.EX, out.GEEMiRKAT.IN)

  rownames(out.GEEMiRKAT) <- rep(seq(0, 2, 0.25), 3)
  filename.GEEMiRKAT <- paste("E:/GEEMiRKAT/plot/data/individualtest.scenario", scenario, ".n=20.rds", sep = "")
  saveRDS(out.GEEMiRKAT, filename.GEEMiRKAT)
}



########################################################################################
######################################## n = 40 ########################################
########################################################################################
rm(list = ls())
for (scenario in 1:4) {
  
  ############################################################
  #######################  typeIerror  #######################
  ############################################################
  
  filename.GEEMiRKAT.AR.typeIerror <- paste("E:/GEEMiRKAT/typeIerror/GEEMiRKAT.AR.typeIerror.csv")
  filename.GEEMiRKAT.EX.typeIerror <- paste("E:/GEEMiRKAT/typeIerror/GEEMiRKAT.EX.typeIerror.csv")
  filename.GEEMiRKAT.IN.typeIerror <- paste("E:/GEEMiRKAT/typeIerror/GEEMiRKAT.IN.typeIerror.csv")
  out.GEEMiRKAT.AR.typeIerror <- read.csv(filename.GEEMiRKAT.AR.typeIerror, row.names = 1)[, 2]
  out.GEEMiRKAT.EX.typeIerror <- read.csv(filename.GEEMiRKAT.EX.typeIerror, row.names = 1)[, 2]
  out.GEEMiRKAT.IN.typeIerror <- read.csv(filename.GEEMiRKAT.IN.typeIerror, row.names = 1)[, 2]
  
  ############################################################
  ##########################  power  #########################
  ############################################################
  
  filename.GEEMiRKAT.AR.power <- paste("E:/GEEMiRKAT/power/scenario", scenario, "/GEEMiRKAT.AR.power.n=40.csv", sep = "")
  filename.GEEMiRKAT.EX.power <- paste("E:/GEEMiRKAT/power/scenario", scenario, "/GEEMiRKAT.EX.power.n=40.csv", sep = "")
  filename.GEEMiRKAT.IN.power <- paste("E:/GEEMiRKAT/power/scenario", scenario, "/GEEMiRKAT.IN.power.n=40.csv", sep = "")
  out.GEEMiRKAT.AR.power <- t(read.csv(filename.GEEMiRKAT.AR.power, row.names = 1))
  out.GEEMiRKAT.EX.power <- t(read.csv(filename.GEEMiRKAT.EX.power, row.names = 1))
  out.GEEMiRKAT.IN.power <- t(read.csv(filename.GEEMiRKAT.IN.power, row.names = 1))
  
  out.GEEMiRKAT.AR <- rbind(out.GEEMiRKAT.AR.typeIerror, out.GEEMiRKAT.AR.power)
  out.GEEMiRKAT.EX <- rbind(out.GEEMiRKAT.EX.typeIerror, out.GEEMiRKAT.EX.power)
  out.GEEMiRKAT.IN <- rbind(out.GEEMiRKAT.IN.typeIerror, out.GEEMiRKAT.IN.power)
  out.GEEMiRKAT <- rbind(out.GEEMiRKAT.AR, out.GEEMiRKAT.EX, out.GEEMiRKAT.IN)
  
  rownames(out.GEEMiRKAT) <- rep(seq(0, 2, 0.25), 3)
  filename.GEEMiRKAT <- paste("E:/GEEMiRKAT/plot/data/individualtest.scenario", scenario, ".n=40.rds", sep = "")
  saveRDS(out.GEEMiRKAT, filename.GEEMiRKAT)
}