#set the directory where the file is saved as the working directory
if (!require("rstudioapi")) install.packages("rstudioapi")
thisdir <- setwd(dirname(rstudioapi::getSourceEditorContext()$path))
thisdir <- setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# load packages
list.of.packages <- c("xml2", "tibble", "dplyr", "magrittr", "readr", "readxl", "tidyr", "stringr", "readxl",
                      "data.table", "rcorpora", "xslt", "git2r")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
invisible(lapply(list.of.packages, require, character.only = T))
rm(new.packages, list.of.packages)

# Set index location
index_path <- paste0(thisdir,"/../i_codebooks/00_index.xlsx")

source(paste0(thisdir,"/../clean and sanitize.R"))

remote = sub('\\.git$', '', git2r::remote_url())

#load the index
index_file <- read_excel(index_path) %>%
  sanitize_index() %>%
  dplyr::select(PROGRAM, FILE, SLUG) %>%
  dplyr::mutate(PROGRAM = as.integer(stringr::str_extract(PROGRAM, "\\d+")),
                SLUG = dplyr::if_else(!is.na(SLUG), SLUG, FILE),
                SLUG = paste0("https://", basename(dirname(remote)), ".github.io/",
                              basename(remote), "/step_", PROGRAM, "/", SLUG))

generate_codebook_page <- function(index_file) {
  index_file[1, ]
  
  level <- index_file[1, ]$PROGRAM
  folder_path <- paste0(thisdir, "/../i_website/content/step_", level)
  
  if (!file.exists(folder_path)){ 
    dir.create(folder_path)
  }
  
  
  
  blogdown::new_post(index_file[1, ]$FILE, kind = "codebook.md", open = F, slug = index_file[1, ]$SLUG,
                     subdir = paste0("step_", level, "/"), ext = ".Rmd")

}

apply(index_file, 1, generate_codebook_page)


#load the function
source(paste0(thisdir,"/../main functions.R"))
source(paste0(thisdir,"/../auxiliary functions.R"))
source(paste0(thisdir,"/../styles_and_parameters.R"))
source(paste0(thisdir,"/../clean and sanitize.R"))

#set the styles
thissteps_style <- c(cell_style = "circle")
thisdatamodels_style <- c(cell_style = "yellow")
thisarrows_style <- c(arrow_style = "curved arrow")

# run the function
test_xml <- create_diagram(
  path = index_path, 
  pages = 1, 
  arrows_style = thisarrows_style, 
  steps_style = thissteps_style, 
  datamodels_style = thisdatamodels_style, 
  direction = "TB"
)

#export the output
writeLines(test_xml, "test.html")