
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
#First I am going to calculate percent change from the means of control groups vs their treatments
#Again, lets start with the diet experiment and testes data

mean(F1T_sonA_nutrition$meth)-mean(F1T_sonA_control$meth) #0.05828337
mean(F1T_sonA_nutrition$coverage)-mean(F1T_sonA_control$coverage) #5.986203

mean(F1T_sonB_nutrition$meth)-mean(F1T_sonB_control$meth)#-0.03560824
mean(F1T_sonB_nutrition$coverage)-mean(F1T_sonB_control$coverage)#-1.848875

mean(F1T_sonC_nutrition$meth)-mean(F1T_sonC_control$meth)#-0.04581733
mean(F1T_sonC_nutrition$coverage)-mean(F1T_sonC_control$coverage)#-3.300234

mean(F1T_sonD_nutrition$meth)-mean(F1T_sonD_control$meth)#0.05194563
mean(F1T_sonD_nutrition$coverage)-mean(F1T_sonD_control$coverage)#2.944099

mean(F1T_sonE_nutrition$meth)-mean(F1T_sonE_control$meth)#-0.04601685
mean(F1T_sonE_nutrition$coverage)-mean(F1T_sonE_control$coverage)#-4.416322)

#Now we do percent change in liver data

mean(F1L_sonA_nutrition$meth)-mean(F1L_sonA_control$meth)#-0.02372983
mean(F1L_sonA_nutrition$coverage)-mean(F1L_sonA_control$coverage)#4.901197

mean(F1L_sonB_nutrition$meth)-mean(F1L_sonB_control$meth)#0.0919865
mean(F1L_sonB_nutrition$coverage)-mean(F1L_sonB_control$coverage)#1.717459

mean(F1L_sonC_nutrition$meth)-mean(F1L_sonC_control$meth)#-0.06345378
mean(F1L_sonC_nutrition$coverage)-mean(F1L_sonC_control$coverage)#-9.914445

mean(F1L_sonD_nutrition$meth)-mean(F1L_sonD_control$meth)#0.0232132
mean(F1L_sonD_nutrition$coverage)-mean(F1L_sonD_control$coverage)#2.437183

mean(F1L_sonE_nutrition$meth)-mean(F1L_sonE_control$meth)#0.03028241
mean(F1L_sonE_nutrition$coverage)-mean(F1L_sonE_control$coverage)#2.509587


#Now we move onto the heat data, starting with percent change in testes.

mean(F1T_sonF_heat$meth)-mean(F1T_sonF_controlheat$meth)#0.02258477
mean(F1T_sonF_heat$coverage)-mean(F1T_sonF_controlheat$coverage)#0.7178485

mean(F1T_sonG_heat$meth)-mean(F1T_sonG_controlheat$meth)#0.05069408
mean(F1T_sonG_heat$coverage)-mean(F1T_sonG_controlheat$coverage)#3.475688

mean(F1T_sonH_heat$meth)-mean(F1T_sonH_controlheat$meth)#0.03420734
mean(F1T_sonH_heat$coverage)-mean(F1T_sonH_controlheat$coverage)#1.953985

mean(F1T_sonI_heat$meth)-mean(F1T_sonI_controlheat$meth)#0.08419306
mean(F1T_sonI_heat$coverage)-mean(F1T_sonI_controlheat$coverage)#4.394692

mean(F1T_sonJ_heat$meth)-mean(F1T_sonJ_controlheat$meth)#-0.01132418
mean(F1T_sonJ_heat$coverage)-mean(F1T_sonJ_controlheat$coverage)#-0.9733102

#Is this getting repetitive yet? You guessed it, moving onto liver! One point was accidentally a lowercase l so ignore it. 

mean(F1L_sonF_heat$meth)-mean(F1L_sonF_controlheat$meth)#-0.01324765
mean(F1L_sonF_heat$coverage)-mean(F1L_sonF_controlheat$coverage)#-45.99898

mean(F1L_sonG_heat$meth)-mean(F1l_sonG_controlheat$meth)#-0.002600873
mean(F1L_sonG_heat$coverage)-mean(F1l_sonG_controlheat$coverage)#12.3464

mean(F1L_sonH_heat$meth)-mean(F1L_sonH_controlheat$meth)#0.002217709
mean(F1L_sonH_heat$coverage)-mean(F1L_sonH_controlheat$coverage)#31.62327

mean(F1L_sonI_heat$meth)-mean(F1L_sonI_controlheat$meth)#0.06960815
mean(F1L_sonI_heat$coverage)-mean(F1L_sonI_controlheat$coverage)#116.0032

mean(F1L_sonJ_heat$meth)-mean(F1L_sonJ_controlheat$meth)#-0.003186264
mean(F1L_sonJ_heat$coverage)-mean(F1L_sonJ_controlheat$coverage)#-12.06475

#So now, this data can be put into excel sheet. Then we use 'readxl' to bring in the data. 
install.packages("readxl")
library(readxl)
setwd("C:/GitHub/ritcheyms")
#I saved this excel into my GitHUb as it will fit here, compared to the other data. 
ExcelData=read_excel('ExcelFinalSheet.xlsx')

#Before we make linear models, we need to explain that meth and coverage are subsets under the "factor" category
meth<-subset(ExcelData,ExcelData$factor=="meth")
coverage<-subset(ExcelData, ExcelData$factor=="coverage")

lmmethchange<-lm(ExcelData$meth~ExcelData$%change)

?lm



setwd("C:/GitHub/ritcheyms")
