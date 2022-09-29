#### Main script for PREE CIEE course 
#### Laura Super
#### September 28, 2022

#### Create a graph in a manuscript ####

## Load file from data folder
# File downloaded from internet using the following command (simulated as from local computer)
# Public repository go to files then right click to get a link:
# url_file <- "https://osf.io/download/fqxye/"
# dest_file <- "./data/test.txt"
# download.file(url=url_file,destfile=dest_file)

# Did not post this file ("CIEE_Course_Teaching_Nema_Phytobiome.csv") on OSF 
# but the above commented code shows reproducible way to 
# download it from OSF if had made it public:

## Read file into R

data_PREE <- read.csv("data/CIEE_Course_Teaching_Nema_Phytobiome.csv")



