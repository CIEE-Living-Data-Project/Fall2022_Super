# Laura Super
# CIEE project for OSF to download and use groundhog
# September 16, 2022
# with code from other sources as well (see below)
### Please note work in progress (messy!)
# I will try to figure out the OSF download next week - but did give an example of a download of data 
# from here: https://brouwern.github.io/BOOK_R_Ecological_Data_Science/downloading-a-csv-file-using-geturl.html

# Data is on OSF and to download do, work in progress:
# library(osfr)
# https://search.r-project.org/CRAN/refmans/osfr/html/osf_download.html
# Download file from a URL
# analysis_plan <- osf_retrieve_file("2ryha") %>%
#  osf_download()

# dryad
# https://cran.r-project.org/web/packages/rdryad/rdryad.pdf

# Download an example file:
# https://beanumber.github.io/sds192/lab-import.html
# Kembel lab material: https://kembellab.ca/r-workshop/
library(tidyverse)
data.url <- "https://kembellab.ca/r-workshop/species_list.txt"
data.destfile = "/Users/laura/Desktop/test_species_list.txt"
download.file(url=data.url,destfile=data.destfile)
# https://brouwern.github.io/BOOK_R_Ecological_Data_Science/downloading-a-csv-file-using-geturl.html
library(RCurl)
eaglesWV.url <- "https://raw.githubusercontent.com/brouwern/wildlifeR/master/inst/extdata/eaglesWV.csv" # [ ]
eaglesWV.url_2 <- getURL(eaglesWV.url)
eaglesWV_2 <- read.csv(text = eaglesWV.url_2)


# Groundhog material modified from Liam GW Johnson's 2022-09-02 demonstration of R package 'groundhog'

# Install package

install.packages("groundhog")

# Load package

library(groundhog)

# Load a package using groundhog

groundhog.library(dplyr, date = "2022-09-01") # 'date' must be at least two days ago, here Laura changed to September 1, 2022

groundhog.library(c("phyloseq", "dplyr","osfr"),date = "2022-09-01") # Loads multiple packages



# From Liam:
# "the first time you run 'groundhog.library()', the function will create a folder
# /home/user/R_groundhog/groundhog_library, where it will store the packages it
# installs. It will ask for permission to do this - type 'OK'

# behind the scenes, 'groundhog.library()' does a few things:

#   determine what version of 'package' was current on 'date'
#   check if appropriate version of 'package' is installed to /groundhog_library
#       if yes, load it
#       if no, install it then load it

# this way, when you give your script to someone else you can be sure that they're
# using the same package versions as you - sometimes there are major changes between
# versions of packages, so using the wrong version might break your script

# unlike regular 'library()', 'groundhog.library()' can also accept a vector of
# multiple package names to load at once:

# groundhog.library( c("ggplot2", "viridis", "RColorBrewer"),
#                  date = "2022-08-31")"


