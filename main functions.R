

# Call the creation of the df containing the styles of cells and arrows,
create_arrow_cell_attrs_tbl <- function(arrow_attr, cells_attr, direction) {
  
  # Create the stiles df for both cells and arrows. Collapse the column to create the variable style
  # if (direction == "TB") {
  #   outX <- inX <- "0.5"
  #   outY <- "1"
  #   inY <- "0"
  # } else if (direction == "LR") {
  #   outX <- "1"
  #   inX <- "0"
  #   outY <- inY <- "0.5"
  # } else if (direction == "RL") {
  #   outX <- "0"
  #   inX <- "1"
  #   outY <- inY <- "0.5"
  # }
  
  cell_styles <- create_cell_styles_df() %>%
    columns_to_style()
  
  #TODO add option for other direction in addition to TB
  
  arrow_styles <- create_arrow_styles_df() 
  
  # arrow_styles <- create_arrow_styles_df() %>%
  #   mutate(exitX = outX, exitY = outY, entryX = inX, entryY = inY) %>%
  #   columns_to_style()
  # 
  # arrow_styles <- create_arrow_styles_df() %>%
  #   mutate(exitX = "1", exitY = "0.5", entryX = "0", entryY = "0.5") %>%
  #   columns_to_style()
  
  # Substitute the style name from the user-defined cells/arrows with the variable associated with them
  tmp0 <- arrow_attr %>%
    filter(level0) %>%
    left_join(arrow_styles, by = c("arrow_style" = "name_style")) %>%
    mutate(width = coalesce(width.x, width.y),
           relative = coalesce(relative.x, relative.y),
           as = coalesce(as.x, as.y))  %>%
    select(-c(arrow_style, width.x, width.y, relative.x, relative.y, as.x, as.y, level0))
  
  tmp1 <- arrow_attr %>%
    filter(!level0)  %>%
    left_join(arrow_styles, by = c("arrow_style" = "name_style")) %>%
    mutate(width = coalesce(width.x, width.y),
           relative = coalesce(relative.x, relative.y),
           as = coalesce(as.x, as.y))  %>%
    select(-c(arrow_style, width.x, width.y, relative.x, relative.y, as.x, as.y, level0))
  
  arrow_attr <- rbind(tmp0, tmp1)
  
  cells_attr <- cells_attr %>%
    left_join(cell_styles, by = c("cell_style" = "name_style")) %>%
    mutate(shape = coalesce(shape.x, shape.y),
           width = coalesce(width.x, width.y),
           height = coalesce(height.x, height.y),
           as = coalesce(as.x, as.y)) %>%
    select(-c(cell_style, shape.x, shape.y, width.x, width.y, height.x, height.y, as.x, as.y))
  
  # Create vectors of ids for both cells and arrows 
  id_cell <- create_id_cells()
  nrow_obj_cell = nrow(cells_attr)
  id_cells <- id_cell[1:nrow_obj_cell]
  id_arrows <- id_cell[(nrow_obj_cell+1):(nrow_obj_cell+nrow(arrow_attr))]
  
  # Create a tbl. Take the user-defined cell name and link the cell-id to them
  tbl_name_to_id <- cells_attr %>%
    select(cell_name) %>%
    mutate(id = id_cells)
  
  # Substitute the variable with the user-defined cell name with corresponding ids
  # cells_attr <- cells_attr %>%
  #   left_join_and_substitute(tbl_name_to_id, old_name = T, by.cond = c("parent" = "cell_name")) %>%
  #   left_join_and_substitute(tbl_name_to_id, old_name = F)
  
  cells_attr <- cells_attr %>%
    rename(id = cell_name)
  
  # Substitute the value, not the name, of the variables "source" and "target" with corresponding ids
  # Add the ids for the arrows
  # arrow_attr <- arrow_attr %>%
  #   left_join_and_substitute(tbl_name_to_id, old_name = T, by.cond = c("parent" = "cell_name")) %>%
  #   left_join_and_substitute(tbl_name_to_id, old_name = T, by.cond = c("source" = "cell_name")) %>%
  #   left_join_and_substitute(tbl_name_to_id, old_name = T, by.cond = c("target" = "cell_name")) %>%
  #   mutate(id = id_arrows)
  
  arrow_attr <- arrow_attr %>%
    mutate(id = id_arrows)
  
  # Combine the two tbl
  cell_arrows_attrs_tbl <- bind_rows(cells_attr, arrow_attr)
  
  return(cell_arrows_attrs_tbl)
  
}

create_arrow_cell_attrs_list <- function(tbl_row) {
  tbl_row %<>%
    select(which(tbl_row != ""))
  return(as.named.vector(tbl_row))
}

# Create new document and root. Number of pages is a variable defined in the parameters.
# TODO support for deciding styles
# TODO support for different style for each page
create_diagram <- function(path, pages = 1, arrows_style, steps_style, datamodels_style, direction){
  
  # cell_list, pages = 1, arrows_style, direction
  
  # cell_arr <- populate_attrs_fd(cell_list, direction)
  cell_arr <- populate_attrs_fd_roel(path, direction)
  cells_attr <- cell_arr[[1]]
  arrow_attr <- cell_arr[[2]]
  
  test_xml <- xml_new_root("mxfile", host="Electron", modified="2021-02-12T20:24:28.529Z",
                           agent="5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) draw.io/14.1.8 Chrome/87.0.4280.88 Electron/11.1.1 Safari/537.36",
                           etag="fHMIuIajccZ_3DrzuGlE", version="14.1.8", type="device", pages = as.character(1))
  id_page <- create_id_page()
  vect_vars_diagram <- c("id", "name")
  
  vector_param_page <- create_vector_param_page()
  
  # TODO need fix for page > 1
  # TODO clean child usage
  for (page in 1:pages) {
    
    xml_add_child(test_xml, "diagram")
    vect_values_diagram <- c(id_page[page], paste0("Page-", page))
    names(vect_values_diagram) <- vect_vars_diagram
    xml_set_attrs(xml_children(test_xml)[length(xml_children(test_xml))], vect_values_diagram)
    
    xml_add_child(xml_children(test_xml), "mxGraphModel")
    xml_set_attrs(xml_children(xml_children(test_xml))[length(xml_children(xml_children(test_xml)))], vector_param_page)
    xml_add_child(xml_children(xml_children(test_xml)), "root")
    
    arrow_cell_attrs_tbl <- create_arrow_cell_attrs_tbl(arrow_attr, cells_attr, direction)
    
    object_attrs_tbl <- arrow_cell_attrs_tbl %>%
      select(any_of(c("label", "tags", "link", "placeholders", "tooltip", "shape", "id")))
    mxGeometry_attrs_tbl <- arrow_cell_attrs_tbl %>%
      select(any_of(c("x", "y", "width", "height", "relative", "as")))
    mxCell_attrs_tbl <- arrow_cell_attrs_tbl %>%
      select(-any_of(c("label", "tags", "link", "placeholders", "tooltip", "shape", "id",
                       "x", "y", "width", "height", "relative", "as")))
    
    for (i in 1:nrow(object_attrs_tbl)) {
      object_attrs_named_row_filtered <- object_attrs_tbl[i,] %>%
        select(which(object_attrs_tbl[i,] != "" | is.null(object_attrs_tbl[i,])))
      object_attrs_named_vector <- create_arrow_cell_attrs_list(object_attrs_named_row_filtered)
      mxCell_attrs_named_row_filtered <- mxCell_attrs_tbl[i,] %>%
        select(which(mxCell_attrs_tbl[i,] != "" | is.null(mxCell_attrs_tbl[i,])))
      mxCell_attrs_named_vector <- create_arrow_cell_attrs_list(mxCell_attrs_named_row_filtered)
      mxGeometry_attrs_named_row_filtered <- mxGeometry_attrs_tbl[i,] %>%
        select(which(mxGeometry_attrs_tbl[i,] != "" | is.null(mxGeometry_attrs_tbl[i,])))
      mxGeometry_attrs_named_vector <- create_arrow_cell_attrs_list(mxGeometry_attrs_named_row_filtered)
      
      if (i %in% c(1,2)) {
        combined_attributes <- c(object_attrs_named_vector, mxCell_attrs_named_vector)
        xml_add_child(xml_children(xml_children(xml_children(test_xml))), "mxCell")
        xml_set_attrs(xml_children(xml_children(xml_children(xml_children(test_xml))))[length(xml_children(xml_children(xml_children(xml_children(test_xml)))))], combined_attributes)
        next
      }
      
      xml_add_child(xml_children(xml_children(xml_children(test_xml))), "object")
      xml_set_attrs(xml_children(xml_children(xml_children(xml_children(test_xml))))[length(xml_children(xml_children(xml_children(xml_children(test_xml)))))], object_attrs_named_vector)
      xml_add_child(xml_children(xml_children(xml_children(xml_children(test_xml))))[length(xml_children(xml_children(xml_children(xml_children(test_xml)))))], "mxCell")
      xml_set_attrs(xml_children(xml_children(xml_children(xml_children(xml_children(test_xml)))))[length(xml_children(xml_children(xml_children(xml_children(xml_children(test_xml))))))], mxCell_attrs_named_vector)
      xml_add_child(xml_children(xml_children(xml_children(xml_children(xml_children(test_xml)))))[length(xml_children(xml_children(xml_children(xml_children(xml_children(test_xml))))))], "mxGeometry")
      xml_set_attrs(xml_children(xml_children(xml_children(xml_children(xml_children(xml_children(test_xml))))))[length(xml_children(xml_children(xml_children(xml_children(xml_children(xml_children(test_xml)))))))], mxGeometry_attrs_named_vector)
      
    }
  }
  return(test_xml)
}

##%######################################################%##
#                                                          #
####                   script to run                    ####
#                                                          #
##%######################################################%##

# TODO add a default standard in case not specified style or a style_name

# cella1 <- createCell("cella1", cell_style = "orange", label = "cella_arancione1", tags = "cell1 test", link = "", level = 0)
# cella2 <- createCell("cella2", cell_style = "orange", label = "cella_arancione2", tags = "cell2", link = "", level = 0)
# cella2a <- createCell("cella2a", cell_style = "orange", label = "cella_arancione2a", tags = "cell2", link = "", level = 1)
# cella3 <- createCell("cella3", cell_style = "yellow", label = "cella_gialla", tags = "cell3", link = "",
#                      level = 2, input = c("cella1", "cella2", "cella2a"), output = c("cella4", "cella5"))
# cella4 <- createCell("cella4", cell_style = "orange", label = "cella_arancione3", tags = "cell4", link = "", level = 3)
# cella5 <- createCell("cella5", cell_style = "orange", label = "cella_arancione4", tags = "cell5 aaa", link = "", level = 3)
# 
# cell_list <- list(cella1, cella2, cella2a, cella3, cella4, cella5)
# pages <- 1
# arrows_style <- "circle arrow"
# 
# test_xml <- create_diagram(cell_list, pages, arrows_style, direction = "TB")
# 
# write_xml(test_xml, "test r.xml")
