#set the directory where the file is saved as the working directory
if (!require("rstudioapi")) install.packages("rstudioapi")
thisdir <- setwd(dirname(rstudioapi::getSourceEditorContext()$path))
thisdir <- setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# load packages
library(xml2)
library(tibble)
library(dplyr)
library(magrittr)
library(readr)
library(readxl)
library(tidyr)
library(stringr)
library(rcorpora)
library(readxl)
library(data.table)

list.of.packages <- c("xml2", "tibble", "dplyr", "magrittr", "readr", "readxl", "tidyr", "stringr", "rcorpora","readxl","data.table")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
invisible(lapply(list.of.packages, require, character.only = T))

#load the function
source(paste0(thisdir,"/../main functions.R"))
source(paste0(thisdir,"/../auxiliary functions.R"))
source(paste0(thisdir,"/../styles_and_parameters.R"))

#set the styles
thissteps_style <- c(cell_style = "circle")
thisdatamodels_style <- c(cell_style = "yellow")
thisarrows_style <- c(arrow_style = "circle arrow")

# load the input file from excel format and save in csv
inputfile <- paste0(thisdir,"/index.xlsx")
fromxls <- read_excel(inputfile)
fwrite(fromxls, file = paste0(thisdir,"/index.csv"))

# run the function
test_xml <- create_diagram(
  path = paste0(thisdir,"/index.csv"), 
  pages = 1, 
  arrows_style = thisarrows_style, 
  steps_style = thissteps_style, 
  datamodels_style = thisdatamodels_style, 
  direction = "TB"
)

#export the output
xml2::write_xml(test_xml, "example.xml")

# to be uploaded to https://app.diagrams.net