#### Main script for PREE CIEE course 
#### Laura Super
#### September 28, 2022
### All of the contents use the license CC BY-NC 4.0

#### Create a graph in a manuscript ####

## 1. Load file from data folder
# File downloaded from internet using the following command (simulated as from local computer)
# Public repository go to files then right click to get a link:
# url_file <- "https://osf.io/download/fqxye/"
# dest_file <- "./data/test.txt"
# download.file(url=url_file,destfile=dest_file)
# Did not post this file ("CIEE_Course_Teaching_Nema_Phytobiome.csv") on OSF 
# but the above commented code shows reproducible way to 
# download it from OSF if had made it public

## 2. Libraries
# install.packages("tidyverse", "markdown","rmarkdown")
# Did not use groundhog given already use R and it has an  issue previously noted but previous scripts mention its use
# tinytex::install_tinytex()
library(tinytex)
library(tidyverse)
library(markdown)
library(rmarkdown)

## 3. Use main script in code folder to do the following:
# Read file into R
# Make graph
# Save output as jpeg
source("code/Run_graph.R")
dev.off()

## Make a pre-registration see code folder
# Use code Preregistration.Rmd to run:
rmarkdown::render("code/Preregistration.Rmd")

## Make a manuscript using .csl and .bib files in output folder
# Move to output folder now for Manuscript_CIEE_Rmd script





