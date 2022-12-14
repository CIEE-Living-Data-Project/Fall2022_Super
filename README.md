# Fall2022 - PREE graph to show reproducible approaches: most in main script 

Laura Super
September 28, 2022
Fall2022 for CIEE PREE module :)

This is a simple project to practice reproducible research techniques. It is short and sweet and makes a graph, has licenses, readme files, etc.

# See main script for most of code: Material for the assignment!

Main_script.R

# OSF read only link!

https://osf.io/exzua/?view_only=be847ac008ef406a9b29291fe7bc0ddf

*With headers given feedback :)!*

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

## 3. Make a pre-registration file into **code folder**
# Use code Preregistration.Rmd to run:
rmarkdown::render("code/Preregistration.Rmd")

## 4. Use main script to call Run_graph.R in **code folder** to do the following:
# Read data file into R
# Make graph
# Save output as jpeg in **analysis folder**
source("code/Run_graph.R")
dev.off()

## 5. Make a manuscript using .csl and .bib files in **output folder**
# Move to output folder now for Manuscript_CIEE_Rmd script

### When finished manually move output to **output folder**
