rm(list = ls())
library(showtext)
setwd("E:/GEEMiRKAT/plot/data")

mydata.20 <- readRDS("aGEEMiRKAT.comparison.20.rds")
mydata.40 <- readRDS("aGEEMiRKAT.comparison.40.rds")
mydata1.20 <- mydata.20$Scenario1
mydata2.20 <- mydata.20$Scenario2
mydata3.20 <- mydata.20$Scenario3
mydata4.20 <- mydata.20$Scenario4

mydata1.40 <- mydata.40$Scenario1
mydata2.40 <- mydata.40$Scenario2
mydata3.40 <- mydata.40$Scenario3
mydata4.40 <- mydata.40$Scenario4

#################################################################################
####################################  n = 20  ###################################
#################################################################################

setEPS()
postscript("E:/GEEMiRKAT/plot/figs/aGEEMiRKAT.comparison.2040.eps", width = 12, height = 6)
showtext_begin()

layout(matrix(c(1:8), nrow = 2, ncol = 4, byrow = TRUE))
par(mai = c(0.5, 0.5, 0.5, 0.5))
par(oma = c(0, 0, 0, 0))

######################
########  1s  ########
######################

x <- as.factor(rownames(mydata1.20))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.20)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.20[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.20[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.20[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.20[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.20[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.20[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.20[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2s  ########
######################

x <- as.factor(rownames(mydata2.20))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.20)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.20[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.20[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.20[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.20[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.20[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.20[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.20[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3s  ########
######################

x <- as.factor(rownames(mydata3.20))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.20)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.20[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.20[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.20[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.20[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.20[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.20[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.20[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4s  ########
######################

x <- as.factor(rownames(mydata4.20))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.20)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.20[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.20[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.20[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.20[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.20[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.20[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.20[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")



#################################################################################
####################################  n = 40  ###################################
#################################################################################

######################
########  1s  ########
######################

x <- as.factor(rownames(mydata1.40))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 1", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata1.40)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata1.40[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.40[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.40[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.40[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.40[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.40[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata1.40[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  2s  ########
######################

x <- as.factor(rownames(mydata2.40))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 2", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata2.40)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata2.40[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.40[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.40[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.40[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.40[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.40[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata2.40[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  3s  ########
######################

x <- as.factor(rownames(mydata3.40))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 3", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata3.40)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata3.40[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.40[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.40[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.40[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.40[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.40[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata3.40[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

######################
########  4s  ########
######################

x <- as.factor(rownames(mydata4.40))
plot(x, rep(999, 9), type = "b", ylim = c(0, 100), xlab = "", ylab = "", xaxt = "n", main = "Scenario 4", cex.main = 1.6, cex.axis = 1.2, cex.lab = 1.4, font.axis = 2, font.lab = 2)
axis(1, c(1, 3, 5, 7, 9), c(0, 0.5, 1, 1.5, 2))
abline(h = c(0, 20, 40, 60, 80, 100), v = as.factor(rownames(mydata4.40)), lty = 2, lwd = 1, col = "grey90")
lines(x, mydata4.40[, "GEEMiRKAT.AR"], type = "b", col = "pink", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.40[, "GEEMiRKAT.EX"], type = "b", col = "thistle", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.40[, "GEEMiRKAT.IN"], type = "b", col = "tan", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.40[, "aGEEMiRKAT.minp"], type = "b", col = "orange", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.40[, "aGEEMiRKAT.ACAT7"], type = "b", col = "#00BADE", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.40[, "aGEEMiRKAT.HMP"], type = "b", col = "slateblue", pch = 20, lty = 1, lwd = 1, cex = 1.5)
lines(x, mydata4.40[, "aGEEMiRKAT.ACAT4"], type = "b", col = "red", pch = 20, lty = 1, lwd = 1, cex = 1.5)
legend(5.25, 35, legend = c("GEEMiRKAT(AR)", "GEEMiRKAT(EX)", "GEEMiRKAT(IN)", "aGEEMiRKAT(minp)", "aGEEMiRKAT(ACAT7)", "aGEEMiRKAT(HMP)", "aGEEMiRKAT(ACAT4)"), col = c("pink", "thistle", "tan", "orange", "#00BADE", "slateblue", "red"), cex = 0.6, lty = 1, lwd = 2, pch = 20, bty="n")

showtext_end()
dev.off()
