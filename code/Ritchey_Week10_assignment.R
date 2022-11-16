# Load the packages from this week's tutorial.

library(spdep)
library(adespatial)
library(vegan)
setwd("C:/GitHub/ritcheyms")
#In the tutorial we looked at the community as a whole and the swimmers which ultimately matched a prediction we had for their distribution.

#Part 1: Look at two other subsets of the community and determine the relative influence of space and habitat on each following the methods in the tutorial. (10 points)
#The options include groupings by taxonomy, where Diptera (true flies) have the strongest flight ability, Trichoptera the 2nd strongest, 
    #Ephememeroptera are 3rd, and non insects are 4th...because they don't have wings.

Diptera.csv <- read.csv("Diptera.csv", header=T)
Trichoptera.csv <- read.csv("Trichoptera.csv", header=T)
Ephemeroptera.csv <- read.csv("Ephemeroptera.csv", header=T)
NonInsects.csv <- read.csv("NonInsects.csv", header=T)
#Groupings by habits include the swimmers (off limits for the assignment) as most mobile, sprawlers as 2nd (they move in search of food, but not quickly),
    #and the clingers come in last (they might move up and down on individual rocks).
Sprawlers.csv <- read.csv("Sprawlers.csv", header=T)
Clingers.csv <- read.csv("Clingers.csv", header=T)

PatchLatLon.csv <- read.csv("PatchLatLon.csv", header=T)

HabitatbyPatch.csv <- read.csv("HabitatbyPatch.csv", header=T)
HabitatbyPatch.mat <- as.matrix(HabitatbyPatch.csv)

Diptera.mat<-as.matrix(Diptera.csv)
Trichoptera.mat<-as.matrix(Trichoptera.csv)
Ephemeroptera.mat<-as.matrix(Ephemeroptera.csv)
NonInsects.mat<-as.matrix(NonInsects.csv)


Sprawlers.mat<-as.matrix(Sprawlers.csv)
Clingers.mat<-as.matrix(Clingers.csv)

PatchLatLon.mat <- as.matrix(PatchLatLon.csv[,-1])

nb<-cell2nb(3,30,"queen")
summary.nb
nb<-droplinks(nb, drop, sym = TRUE)
nb1 <- droplinks(nb, 19, sym=TRUE) 
nb2 <- droplinks(nb1, 22, sym=TRUE)
nb3 <- droplinks(nb2, 25, sym=TRUE)
nb4 <- droplinks(nb3, 30, sym=TRUE)

bin.mat <- aem.build.binary(nb4, PatchLatLon.mat, unit.angle = "degrees", rot.angle = 90, rm.same.y = TRUE, plot.connexions = TRUE)
plot(PatchLatLon.mat[,2]~PatchLatLon.mat[,3], xlim = rev(c(76.75,77)))

aem.ev <- aem(aem.build.binary=bin.mat)
aem.df <- aem.ev$vectors[c(-19,-22,-25,-30),]
aem.df

Space.rda <- rda(Diptera.mat, as.data.frame(aem.df))
Space.r2a <- RsquareAdj(Space.rda)$adj.r.squared

aem.fwd <- forward.sel(Diptera.mat,aem.df, adjR2thresh=Space.r2a)
aem.fwd$order




Space.rda1 <- rda(Trichoptera.mat, as.data.frame(aem.df))
Space.r2a1 <- RsquareAdj(Space.rda1)$adj.r.squared

aem.fwd1 <- forward.sel(Trichoptera.mat,aem.df, adjR2thresh=Space.r2a1)
aem.fwd1$order




Space.rda2 <- rda(Ephemeroptera.mat, as.data.frame(aem.df))
Space.r2a2 <- RsquareAdj(Space.rda2)$adj.r.squared

aem.fwd2 <- forward.sel(Ephemeroptera.mat,aem.df, adjR2thresh=Space.r2a2)
aem.fwd2$order




Space.rda3 <- rda(NonInsects.mat, as.data.frame(aem.df))
Space.r2a3 <- RsquareAdj(Space.rda3)$adj.r.squared

aem.fwd3 <- forward.sel(NonInsects.mat,aem.df, adjR2thresh=Space.r2a3)
aem.fwd3$order
#error

Space.rda4 <- rda(Sprawlers.mat, as.data.frame(aem.df))
Space.r2a4 <- RsquareAdj(Space.rda4)$adj.r.squared

aem.fwd4 <- forward.sel(Sprawlers.mat,aem.df, adjR2thresh=Space.r2a4)
aem.fwd4$order
#error
Space.rda5 <- rda(Clingers.mat, as.data.frame(aem.df))
Space.r2a5 <- RsquareAdj(Space.rda5)$adj.r.squared

aem.fwd5 <- forward.sel(Clingers.mat,aem.df, adjR2thresh=Space.r2a5)
aem.fwd5$order

HabNoSpace.rda <- rda(Diptera.mat, Sprawlers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda 
anova(HabNoSpace.rda, perm.max = 10000)
RsquareAdj(HabNoSpace.rda)
HabNoSpace.rda1 <- rda(Diptera.mat, Clingers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda 1
anova(HabNoSpace.rda1, perm.max = 10000)
RsquareAdj(HabNoSpace.rda1)
#error

HabNoSpace.rda <- rda(Trichoptera.mat, Sprawlers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda 
anova(HabNoSpace.rda, perm.max = 10000)
RsquareAdj(HabNoSpace.rda)
HabNoSpace.rda1 <- rda(Trichoptera.mat, Clingers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda1
anova(HabNoSpace.rda1, perm.max = 10000)
RsquareAdj(HabNoSpace.rda1)
#error
HabNoSpace.rda2 <- rda(Ephemeroptera.mat, Sprawlers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda2 
anova(HabNoSpace.rda2, perm.max = 10000)
RsquareAdj(HabNoSpace.rda2)
HabNoSpace.rda3 <- rda(Ephemeroptera.mat, Clingers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda3
anova(HabNoSpace.rda3, perm.max = 10000)
RsquareAdj(HabNoSpace.rda3)


HabNoSpace.rda4 <- rda(NonInsects.csv, Sprawlers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda4 
anova(HabNoSpace.rda4, perm.max = 10000)
RsquareAdj(HabNoSpace.rda4)
HabNoSpace.rda5 <- rda(NonInsects.csv, Clingers.mat, as.data.frame(aem.df[,aem.fwd$order]))
HabNoSpace.rda5
anova(HabNoSpace.rda5, perm.max = 10000)
RsquareAdj(HabNoSpace.rda5)

#Why are you comparing different community groups against each other instead of using habitat?
#I'm not sure how to interpret what you did here.



#Part 2: What is your interpretation of the pattern for each group individually, and the two in comparison, based on their mobility? (5 points)
#Although I did recieve a few errors, I think the pattern with their rating of how good they were at flying vs their rate of movements with clinging and sprawling had a correlation
#What do you mean by clingers and sprawlers having a correlation? Constrained variance for one vs the other?

#Part 3: For each of your chosen groups of bugs, perform variable selection for the habitat data rather than the AEM data. Which habitat variables are significant for each? (10 points)
  # Definitions for the habitat column names:
    #Inorg = total suspended inorganic solids in the water column
    #Organ = total suspended organic solids in the water column
    #Chla = Chlorophyll a concentration from benthic rocks collected in-stream
    #BOM = total benthic organic matter in the sample
    #Depth = water depth
    #Flow	= water velocity where samples were collected
    #Fines = Percent of the substrate as "fines" i.e. small particles too small to measure
    #AveAr = The average size of rocks where each sample was collected
Dip.rda <- rda(Diptera.mat, as.data.frame(aem.df))
Dip.r2a <- RsquareAdj(Dip.rda)$adj.r.squared

Dip.fwd <- forward.sel(Diptera.mat,as.data.frame(aem.df), adjR2thresh=Dip.r2a)

DipNoHab.rda <- rda(Diptera.mat, as.data.frame(aem.df), HabitatbyPatch.mat)
DipNoHab.rda 
anova(DipNoHab.rda, perm.max = 10000)
RsquareAdj(DipNoHab.rda)

DipNoSpace.rda <- rda(Diptera.mat, HabitatbyPatch.mat, as.data.frame(aem.df))
DipNoSpace.rda 
anova(DipNoSpace.rda, perm.max = 10000)
RsquareAdj(DipNoSpace.rda)


Eph.rda <- rda(Ephemeroptera.mat, as.data.frame(aem.df))
Eph.r2a <- RsquareAdj(Eph.rda)$adj.r.squared

Eph.fwd <- forward.sel(Ephemeroptera.mat,as.data.frame(aem.df), adjR2thresh=Eph.r2a)

EphNoHab.rda <- rda(Ephemeroptera.mat, as.data.frame(aem.df), HabitatbyPatch.mat)
EphNoHab.rda 
anova(EphNoHab.rda, perm.max = 10000)
RsquareAdj(EphNoHab.rda)

EphNoSpace.rda <- rda(Ephemeroptera.mat, HabitatbyPatch.mat, as.data.frame(aem.df))
EphNoSpace.rda 
anova(EphNoSpace.rda, perm.max = 10000)
RsquareAdj(EphNoSpace.rda)


Tri.rda <- rda(Trichoptera.mat, as.data.frame(aem.df))
Tri.r2a <- RsquareAdj(Tri.rda)$adj.r.squared

Tri.fwd <- forward.sel(Trichoptera.mat,as.data.frame(aem.df), adjR2thresh=Tri.r2a)

TriNoHab.rda <- rda(Trichoptera.mat, as.data.frame(aem.df), HabitatbyPatch.mat)
TriNoHab.rda 
anova(TriNoHab.rda, perm.max = 10000)
RsquareAdj(TriNoHab.rda)

TriNoSpace.rda <- rda(Trichoptera.mat, HabitatbyPatch.mat, as.data.frame(aem.df))
TriNoSpace.rda 
anova(TriNoSpace.rda, perm.max = 10000)
RsquareAdj(TriNoSpace.rda)



Non.rda <- rda(NonInsects.mat, as.data.frame(aem.df))
Non.r2a <- RsquareAdj(Non.rda)$adj.r.squared

Non.fwd <- forward.sel(NonInsects.mat,as.data.frame(aem.df), adjR2thresh=Non.r2a)

NonNoHab.rda <- rda(NonInsects.mat, as.data.frame(aem.df), HabitatbyPatch.mat)
NonNoHab.rda 
anova(NonNoHab.rda, perm.max = 10000)
RsquareAdj(NonNoHab.rda)

NonNoSpace.rda <- rda(NonInsects.mat, HabitatbyPatch.mat, as.data.frame(aem.df))
NonNoSpace.rda 
anova(NonNoSpace.rda, perm.max = 10000)
RsquareAdj(NonNoSpace.rda)
#Error


#Matt idk what is happening right now I am so confused on everything and what it means 
#What you did in part 3 is what you were supposed to do in part 1. Part 3 was about selecting habitat variables instead of space, not in addition to.


#Part 4: How do you expect selecting both the spatial and the habitat variables would change the results of the RDAs from Part 1 above? (5 points)
  #(You do not need to redo the RDAs, unless you *want* to.)
#Flying insects vs non flying insects would be found at different spatial heights which would also affect the habitat they are found in 
#While potentially true, this answer is not relevant to the question. Without selecting variables for habitat, you are likely overfitting that part of the model.
#So the "real" influence of space is likely much stronger than what you generated with the above models.


