
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



#blah


setwd("C:/GitHub/ritcheyms")
