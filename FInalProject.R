#Epigenetic changes in guinea pigs: Diet vs Heat

#Data was obtained from DataDryad from our friends at the Leibniz Institute for Zoo and Wildlife Research. Below are the links to find the data sets.

#Changes in Diet: https://datadryad.org/stash/dataset/doi:10.5061%2Fdryad.7bg3t6s
#Changes in Heat: https://datadryad.org/stash/dataset/doi:10.5061%2Fdryad.0f8q1

#Each file is separate, so begin with downloading them and unzipping. Due to the size, I was unable to upload these into a repository. Instead, I will set my working directory to a seperate space
  #to read them in
#The files are in the form of .meth files. To use them in excel, you must manually change them into .txt and changing the names to better represent the data. Along with reading them in, 
  #I am including the column names for each data set as each one has the same names. 

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


#First I am going to calculate percent change from the means of control groups vs their treatments
#to do this, take the mean values from each guinea pig son, and subtract the control from the treatment.
#This will be done with the methylation values and the coverage values as this is relevant to study epigenetic effects. 
#I am noting each value afterwards, which will be helpful when creating an excel sheet in the next step.
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

#So now, this data can be put into excel sheet, including percent change as a column. Then we use 'readxl' to bring in the data. 
install.packages("readxl")
library(readxl)
setwd("C:/GitHub/ritcheyms")
#I saved this excel into my GitHUb as it will fit here, compared to the other data. 
ExcelData=read_excel('ExcelFinalSheet.xlsx')
#the columns include the experiment, son, factor (methylation or coverage), the percent change, and which organ is affected. L is for liver and T is for testes.

#Change methylation and coverage to subsets under the "factor" category to continue tests
meth<-subset(ExcelData,ExcelData$factor=="meth")
coverage<-subset(ExcelData, ExcelData$factor=="coverage")


#Finally, we examine the differences between percent change and the affected organ compared between methylation and coverage. 
#Create linear model for the subset of methylation and coverage

lmmethchange<-lm(meth$change~meth$organ)
plot((lmmethchange), main="Methylation Changes In Organs", sub="Change Approximated By Organ")
summary(lmmethchange)#not significant


lmcoveragechange<-lm(coverage$change~coverage$organ)
plot(lmcoveragechange, main="Coverage Changes In Organs", sub="Change Approximated By Organ")
summary(lmcoveragechange)#not significant
#These plot outputs are for identifying if the model is appropriate, not for displaying data relationships.
#Would need boxplot(coverage$change~coverage$organ)instead, which is what you have below.
#A plot related to variance might have worked better here (if you want to learn more about that let me know!)

#Kruskal-Wallis test on the methylation and coverage, again using the subsets. 

KWTEST<-kruskal.test(meth$change~meth$organ)
print(KWTEST)
boxplot((meth$change~meth$organ), main="Percent Change in Methylation vs Organ", ylab="Methylation", xlab="Organ")#not significant


KWTEST2<-kruskal.test(coverage$change~coverage$organ)
print(KWTEST2)
boxplot((coverage$change~coverage$organ), main="Percent Change in Coverage vs Organ", ylab="Coverage", xlab="Organ")#not significant

#It can be concluded that there is no significant relationship between the percent change of epigenetic effects between the liver and testes between the two experiments. 


setwd("C:/GitHub/ritcheyms")

