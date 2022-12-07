
#first i need to read in my files for my project, which is in the form of a .meth file. I go into each file, and convert it into a .txt file. I then read it into
#r. The two experiments have their own working directories. After reading them in, I will insert their column names. 

#First I will read in the diet change experiment 
setwd("C:/Users/ritch/OneDrive/Desktop/DietChanges/F1L_and F1T_coverage_MethLevels/F1L_and F1T_coverage_MethLevels")

F1L_sonA_control<-read.table("F1L_sonA_control.txt", header=TRUE)
colnames(F1L_sonA_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonA_nutrition<-read.table("F1L_sonA_nutrition.txt", header=TRUE)
colnames(F1L_sonA_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonB_control<-read.table("F1L_sonB_control.txt", header=TRUE)
colnames(F1L_sonB_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonB_nutrition<-read.table("F1L_sonB_nutrition.txt", header=TRUE)
colnames(F1L_sonB_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonC_control<-read.table("F1L_sonC_control.txt", header=TRUE)
colnames(F1L_sonC_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonC_nutrition<-read.table("F1L_sonC_nutrition.txt", header=TRUE)
colnames(F1L_sonC_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonD_control<-read.table("F1L_sonD_control.txt", header=TRUE)
colnames(F1L_sonD_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonD_nutrition<-read.table("F1L_sonD_nutrition.txt", header=TRUE)
colnames(F1L_sonD_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonE_control<-read.table("F1L_sonE_control.txt", header=TRUE)
colnames(F1L_sonE_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonE_nutrition<-read.table("F1L_sonE_nutrition.txt", header=TRUE)
colnames(F1L_sonE_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonA_control<-read.table("F1T_sonA_control.txt", header=TRUE)
colnames(F1T_sonA_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonA_nutrition<-read.table("F1T_sonA_nutrition.txt", header=TRUE)
colnames(F1T_sonA_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonB_control<-read.table("F1T_sonB_control.txt", header=TRUE)
colnames(F1T_sonB_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonB_nutrition<-read.table("F1T_sonB_nutrition.txt", header=TRUE)
colnames(F1T_sonB_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonC_control<-read.table("F1T_sonC_control.txt", header=TRUE)
colnames(F1T_sonC_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonC_nutrition<-read.table("F1T_sonC_nutrition.txt", header=TRUE)
colnames(F1T_sonC_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonD_control<-read.table("F1T_sonD_control.txt", header=TRUE)
colnames(F1T_sonD_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonD_nutrition<-read.table("F1T_sonD_nutrition.txt", header=TRUE)
colnames(F1T_sonD_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonE_control<-read.table("F1T_sonE_control.txt", header=TRUE)
colnames(F1T_sonE_control)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonE_nutrition<-read.table("F1T_sonE_nutrition.txt", header=TRUE)
colnames(F1T_sonE_nutrition)<-c("scaffold","starting","strand","CpG","meth","coverage")


#Now I will move onto the heat changes experiment, starting with liver coverage levels.

setwd("C:/Users/ritch/OneDrive/Desktop/HeatChanges/F1L_coverage_MethLevels")


F1L_sonF_controlheat<-read.table("F1L_sonF_controlheat.txt", header=TRUE)
colnames(F1L_sonF_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonF_heat<-read.table("F1L_sonF_heat.txt", header=TRUE)
colnames(F1L_sonF_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1l_sonG_controlheat<-read.table("F1l_sonG_controlheat.txt", header=TRUE)
colnames(F1l_sonG_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonG_heat<-read.table("F1L_sonG_heat.txt", header=TRUE)
colnames(F1L_sonG_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonH_controlheat<-read.table("F1L_sonH_controlheat.txt", header=TRUE)
colnames(F1L_sonH_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonH_heat<-read.table("F1L_sonH_heat.txt", header=TRUE)
colnames(F1L_sonH_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonI_controlheat<-read.table("F1L_sonI_controlheat.txt", header=TRUE)
colnames(F1L_sonI_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonI_heat<-read.table("F1L_sonI_heat.txt", header=TRUE)
colnames(F1L_sonI_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonJ_controlheat<-read.table("F1L_sonJ_controlheat.txt", header=TRUE)
colnames(F1L_sonJ_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1L_sonJ_heat<-read.table("F1L_sonJ_heat.txt", header=TRUE)
colnames(F1L_sonJ_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")


#Next, i read in the testes levels from the heat change experiment.

setwd("C:/Users/ritch/OneDrive/Desktop/HeatChanges/F1T_coverage_MethLevels")


F1T_sonF_controlheat<-read.table("F1T_sonF_controlheat.txt", header=TRUE)
colnames(F1T_sonF_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonF_heat<-read.table("F1T_sonF_heat.txt", header=TRUE)
colnames(F1T_sonF_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonG_controlheat<-read.table("F1T_sonG_controlheat.txt", header=TRUE)
colnames(F1T_sonG_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonG_heat<-read.table("F1T_sonG_heat.txt", header=TRUE)
colnames(F1T_sonG_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonH_controlheat<-read.table("F1T_sonH_controlheat.txt", header=TRUE)
colnames(F1T_sonH_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonH_heat<-read.table("F1T_sonH_heat.txt", header=TRUE)
colnames(F1T_sonH_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonI_controlheat<-read.table("F1T_sonI_controlheat.txt", header=TRUE)
colnames(F1T_sonI_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonI_heat<-read.table("F1T_sonI_heat.txt", header=TRUE)
colnames(F1T_sonI_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonJ_controlheat<-read.table("F1T_sonJ_controlheat.txt", header=TRUE)
colnames(F1T_sonJ_controlheat)<-c("scaffold","starting","strand","CpG","meth","coverage")

F1T_sonJ_heat<-read.table("F1T_sonJ_heat.txt", header=TRUE)
colnames(F1T_sonJ_heat)<-c("scaffold","starting","strand","CpG","meth","coverage")

#Now, we move onto data analysis! Yippie!
setwd("C:/GitHub/ritcheyms")
