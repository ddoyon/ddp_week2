ddp_week2 <- function(coords = NULL, popup = NULL) {
      
      packages <- c("leaflet", "magrittr", "ggmap")
      lapply(packages, require, character.only = TRUE)
      
      if(is.null(coords)) {
            coords <- c(174.768, -36.852)
      }
            
      m <- leaflet() %>%
            addTiles() %>%  # Add default OpenStreetMap map tiles
            addMarkers(lng = coords[1], lat = coords[2], popup = popup)
      m  # Print the map
      
}