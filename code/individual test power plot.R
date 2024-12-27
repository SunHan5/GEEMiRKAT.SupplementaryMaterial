# devtools::install_github("jokergoo/ComplexHeatmap")

rm(list = ls())
library(ComplexHeatmap)
library(circlize)
library(ggplot2)
library(ggsignif)
library(ggpubr)
library(ggsci)
library(patchwork)
library(showtext)
setwd("E:/GEEMiRKAT/plot/data")

mydata1.20 <- readRDS("individualtest.scenario1.n=20.rds")
mydata2.20 <- readRDS("individualtest.scenario2.n=20.rds")
mydata3.20 <- readRDS("individualtest.scenario3.n=20.rds")
mydata4.20 <- readRDS("individualtest.scenario4.n=20.rds")

mydata1.40 <- readRDS("individualtest.scenario1.n=40.rds")
mydata2.40 <- readRDS("individualtest.scenario2.n=40.rds")
mydata3.40 <- readRDS("individualtest.scenario3.n=40.rds")
mydata4.40 <- readRDS("individualtest.scenario4.n=40.rds")

############################ Adding white space ############################

zero.number <- rep(0, 8)
mydata1.20.new <- rbind(mydata1.20[1:9,], zero.number, mydata1.20[10:18,], zero.number, mydata1.20[19:27,])
mydata2.20.new <- rbind(mydata2.20[1:9,], zero.number, mydata2.20[10:18,], zero.number, mydata2.20[19:27,])
mydata3.20.new <- rbind(mydata3.20[1:9,], zero.number, mydata3.20[10:18,], zero.number, mydata3.20[19:27,])
mydata4.20.new <- rbind(mydata4.20[1:9,], zero.number, mydata4.20[10:18,], zero.number, mydata4.20[19:27,])

mydata1.40.new <- rbind(mydata1.40[1:9,], zero.number, mydata1.40[10:18,], zero.number, mydata1.40[19:27,])
mydata2.40.new <- rbind(mydata2.40[1:9,], zero.number, mydata2.40[10:18,], zero.number, mydata2.40[19:27,])
mydata3.40.new <- rbind(mydata3.40[1:9,], zero.number, mydata3.40[10:18,], zero.number, mydata3.40[19:27,])
mydata4.40.new <- rbind(mydata4.40[1:9,], zero.number, mydata4.40[10:18,], zero.number, mydata4.40[19:27,])

rownames(mydata1.20.new)[c(10,20)] <- rownames(mydata2.20.new)[c(10,20)] <- rownames(mydata3.20.new)[c(10,20)] <- rownames(mydata4.20.new)[c(10,20)] <- ""
rownames(mydata1.40.new)[c(10,20)] <- rownames(mydata2.40.new)[c(10,20)] <- rownames(mydata3.40.new)[c(10,20)] <- rownames(mydata4.40.new)[c(10,20)] <- ""

############################################################################
##################################  plot  ##################################
############################################################################

col_fun = colorRamp2(seq(0, 100, 20), c("white", "lemonchiffon","gold","red","red2","red4"))
cm = ColorMapping(col_fun = col_fun)

lgd = Legend(col_fun = cm, title = NULL, at = seq(0, 100, 20), legend_gp = gpar(fill = seq(0, 100, 20)), 
             legend_height = unit(4, "cm"), legend_width = unit(2, "mm"), direction = "vertical")

############################################################################
###################################  20  ###################################
############################################################################

setEPS()
postscript("E:/GEEMiRKAT/plot/figs/individual.tests.20.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.20.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.20.new),
                   column_order = c(1:8),
                   column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
  Heatmap(mydata2.20.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
          row_names_side = "left",
          row_order = c(1:29),
          row_labels = rownames(mydata2.20.new),
          column_order = c(1:8),
          column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
          column_title = "Scenario 2",
          rect_gp = gpar(col = "white", lwd = 3),
          show_heatmap_legend  = F) +
  Heatmap(mydata3.20.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
          row_names_side = "left",
          row_order = c(1:29),
          row_labels = rownames(mydata3.20.new),
          column_order = c(1:8),
          column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
          column_title = "Scenario 3",
          rect_gp = gpar(col = "white", lwd = 3),
          show_heatmap_legend  = F) +
  Heatmap(mydata4.20.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
          row_names_side = "left",
          row_order = c(1:29),
          row_labels = rownames(mydata4.20.new),
          column_order = c(1:8),
          column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
          column_title = "Scenario 4",
          rect_gp = gpar(col = "white", lwd = 3),
          show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()


############################################################################
###################################  40  ###################################
############################################################################

setEPS()
postscript("E:/GEEMiRKAT/plot/figs/individual.tests.40.eps", width = 12, height = 8)
showtext_begin()

ht_list <- Heatmap(mydata1.40.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
                   row_names_side = "left",
                   row_order = c(1:29),
                   row_labels = rownames(mydata1.40.new),
                   column_order = c(1:8),
                   column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
                   column_title = "Scenario 1",
                   rect_gp = gpar(col = "white", lwd = 3),
                   show_heatmap_legend  = F) +
  Heatmap(mydata2.40.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
          row_names_side = "left",
          row_order = c(1:29),
          row_labels = rownames(mydata2.40.new),
          column_order = c(1:8),
          column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
          column_title = "Scenario 2",
          rect_gp = gpar(col = "white", lwd = 3),
          show_heatmap_legend  = F) +
  Heatmap(mydata3.40.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"), 
          row_names_side = "left",
          row_order = c(1:29),
          row_labels = rownames(mydata3.40.new),
          column_order = c(1:8),
          column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
          column_title = "Scenario 3",
          rect_gp = gpar(col = "white", lwd = 3),
          show_heatmap_legend  = F) +
  Heatmap(mydata4.40.new, col = cm, width = unit(6, "cm"), height = unit(18, "cm"),
          row_names_side = "left",
          row_order = c(1:29),
          row_labels = rownames(mydata4.40.new),
          column_order = c(1:8),
          column_labels = c("BC", "u", "0", "0.25", "0.5", "0.75", "w", "Omni"),
          column_title = "Scenario 4",
          rect_gp = gpar(col = "white", lwd = 3),
          show_heatmap_legend  = F)
draw(ht_list, annotation_legend_list = lgd, annotation_legend_side = "right", gap = unit(8, "mm"))

showtext_end()
dev.off()
