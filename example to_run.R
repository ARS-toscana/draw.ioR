library(xml2)
library(tibble)
library(dplyr)
library(magrittr)
library(readr)
library(readxl)
library(tidyr)
library(stringr)
library(rcorpora)

list.of.packages <- c("xml2", "tibble", "dplyr", "magrittr", "readr", "readxl", "tidyr", "stringr", "rcorpora")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
invisible(lapply(list.of.packages, require, character.only = T))

source("create diagram.R")
source("helper_functions.R")
source("styles_and_parameters.R")

steps_style <- c(cell_style = "circle")
datamodels_style <- c(cell_style = "yellow")
arrows_style <- c(arrow_style = "circle arrow")

test_xml <- create_diagram("index.csv", pages = 1, arrows_style, steps_style, datamodels_style, direction = "TB")
xml2::write_xml(test_xml, "test CovE.xml")