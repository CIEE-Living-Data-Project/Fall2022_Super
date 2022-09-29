## Read file into R
data_PREE <- read.csv("/data/CIEE_Course_Teaching_Nema_Phytobiome.csv") # Teaching phytobiome data
head(data_PREE) # head of data

## Make graph
boxplot(data_PREE$Heightwk9_cm ~ data_PREE$Treatment, xlab = "Treatment", ylab = "Height (cm)") # plot plant height versus treatments

## Save output as jpeg
jpeg('analysis/phytobiome_height.jpeg')
boxplot(data_PREE$Heightwk9_cm ~ data_PREE$Treatment, xlab = "Treatment", ylab = "Height (cm)") # plot plant height versus treatments
dev.off()
