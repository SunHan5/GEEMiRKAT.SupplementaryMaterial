rm(list = ls())
library(reshape2)
library(ggplot2)
library(ggpubr)
library(dplyr)
library(patchwork)
library(showtext)
setwd("E:/GEEMiRKAT/plot/data")

all.beta.20 <- readRDS("all.scenario.comparison.20.rds")
all.beta.40 <- readRDS("all.scenario.comparison.40.rds")

beta0.20 <- all.beta.20$beta0
beta1.20 <- all.beta.20$beta0.25
beta2.20 <- all.beta.20$beta0.5
beta3.20 <- all.beta.20$beta0.75
beta4.20 <- all.beta.20$beta1
beta5.20 <- all.beta.20$beta1.25
beta6.20 <- all.beta.20$beta1.5
beta7.20 <- all.beta.20$beta1.75
beta8.20 <- all.beta.20$beta2

beta0.40 <- all.beta.40$beta0
beta1.40 <- all.beta.40$beta0.25
beta2.40 <- all.beta.40$beta0.5
beta3.40 <- all.beta.40$beta0.75
beta4.40 <- all.beta.40$beta1
beta5.40 <- all.beta.40$beta1.25
beta6.40 <- all.beta.40$beta1.5
beta7.40 <- all.beta.40$beta1.75
beta8.40 <- all.beta.40$beta2

mydata1.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta0.20, 2, mean),
                        se = apply(beta0.20, 2, sd))

mydata2.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta1.20, 2, mean),
                        se = apply(beta1.20, 2, sd))

mydata3.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta2.20, 2, mean),
                        se = apply(beta2.20, 2, sd))

mydata4.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta3.20, 2, mean),
                        se = apply(beta3.20, 2, sd))

mydata5.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta4.20, 2, mean),
                        se = apply(beta4.20, 2, sd))

mydata6.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta5.20, 2, mean),
                        se = apply(beta5.20, 2, sd))

mydata7.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta6.20, 2, mean),
                        se = apply(beta6.20, 2, sd))

mydata8.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta7.20, 2, mean),
                        se = apply(beta7.20, 2, sd))

mydata9.20 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta8.20, 2, mean),
                        se = apply(beta8.20, 2, sd))

mydata1.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta0.40, 2, mean),
                        se = apply(beta0.40, 2, sd))

mydata2.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta1.40, 2, mean),
                        se = apply(beta1.40, 2, sd))

mydata3.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta2.40, 2, mean),
                        se = apply(beta2.40, 2, sd))

mydata4.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta3.40, 2, mean),
                        se = apply(beta3.40, 2, sd))

mydata5.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta4.40, 2, mean),
                        se = apply(beta4.40, 2, sd))

mydata6.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta5.40, 2, mean),
                        se = apply(beta5.40, 2, sd))

mydata7.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta6.40, 2, mean),
                        se = apply(beta6.40, 2, sd))

mydata8.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta7.40, 2, mean),
                        se = apply(beta7.40, 2, sd))

mydata9.40 = data.frame(Methods = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"),
                        mean = apply(beta8.40, 2, mean),
                        se = apply(beta8.40, 2, sd))

mydata1.20$Methods <- factor(mydata1.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata2.20$Methods <- factor(mydata2.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata3.20$Methods <- factor(mydata3.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata4.20$Methods <- factor(mydata4.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata5.20$Methods <- factor(mydata5.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata6.20$Methods <- factor(mydata6.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata7.20$Methods <- factor(mydata7.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata8.20$Methods <- factor(mydata8.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata9.20$Methods <- factor(mydata9.20$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)

mydata1.40$Methods <- factor(mydata1.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata2.40$Methods <- factor(mydata2.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata3.40$Methods <- factor(mydata3.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata4.40$Methods <- factor(mydata4.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata5.40$Methods <- factor(mydata5.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata6.40$Methods <- factor(mydata6.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata7.40$Methods <- factor(mydata7.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata8.40$Methods <- factor(mydata8.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)
mydata9.40$Methods <- factor(mydata9.40$Methods, levels = c("aGEEMiHC", "aGLMMMiRKAT", "OMiRKAT", "aGEEMiRKAT"), ordered = TRUE)


####################################################################################
###################################### n = 20 ######################################
####################################################################################

p1.20 <- ggplot(data = mydata1.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = 5, color = "red", linetype = "dashed") +
  geom_hline(yintercept = 6, color = "red") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 0.1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 2, 4, 5, 6)) + xlab("") + ylab("Type I error") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p2.20 <- ggplot(data = mydata2.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p3.20 <- ggplot(data = mydata3.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p4.20 <- ggplot(data = mydata4.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p5.20 <- ggplot(data = mydata5.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") + 
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p6.20 <- ggplot(data = mydata6.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p7.20 <- ggplot(data = mydata7.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p8.20 <- ggplot(data = mydata8.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p9.20 <- ggplot(data = mydata9.20, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 2"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))




####################################################################################
###################################### n = 40 ######################################
####################################################################################

p1.40 <- ggplot(data = mydata1.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = 5, color = "red", linetype = "dashed") +
  geom_hline(yintercept = 6, color = "red") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 0.1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 2, 4, 5, 6)) + xlab("") + ylab("Type I error") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p2.40 <- ggplot(data = mydata2.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p3.40 <- ggplot(data = mydata3.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p4.40 <- ggplot(data = mydata4.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black")  +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 0.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p5.40 <- ggplot(data = mydata5.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") + 
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p6.40 <- ggplot(data = mydata6.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black")  +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.25"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p7.40 <- ggplot(data = mydata7.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") + 
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.5"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p8.40 <- ggplot(data = mydata8.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 1.75"))) + theme(plot.title = element_text(hjust = 0.5)) +
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

p9.40 <- ggplot(data = mydata9.40, aes(x = Methods, y = mean, fill = Methods)) +
  geom_hline(yintercept = c(0, 20, 40, 60, 80, 100), color = "grey80", linetype = "dashed") +
  geom_bar(stat = "identity", position = "dodge", colour="black") +
  geom_errorbar(aes(ymax = mean + se, ymin = mean - se), position = position_dodge(0.9), width = 0.15) +
  geom_text(aes(label = c(paste(as.character(round(mean, digits = 2)), "%", sep = "")), y = mean + 1, color = factor(Methods)), position = position_dodge(0.9), vjust = 0, size = 2) +
  scale_y_continuous(breaks = c(0, 20, 40, 60, 80, 100)) + xlab("") + ylab("Power") + 
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  scale_colour_manual(values = c("green", "blue", "orange", "red")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 0.7, vjust = 0.7)) +
  ggtitle(expression(paste(symbol(b), " = 2"))) + theme(plot.title = element_text(hjust = 0.5)) + 
  theme(legend.position = "none") + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))


layout <- '
ABCD
EFGH
IJKL
MNOP
'

setEPS()
postscript("E:/GEEMiRKAT/plot/figs/all.scenario.compare.2040.eps", width = 10, height = 12)
showtext_begin()

p2.20 + p3.20 + p4.20 + p5.20 + p6.20 + p7.20 + p8.20 + p9.20 + p2.40 + p3.40 + p4.40 + p5.40 + p6.40 + p7.40 + p8.40 + p9.40 + plot_layout(design = layout)  

showtext_end()
dev.off()


