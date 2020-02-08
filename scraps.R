viz_scatter_x <- function(data, vbl) {
  ggplot(
    data = data,
    mapping = aes(x = x, 
                  y = {{vbl}})) +
      geom_point()
}

library(ggplot2)
x <- iris$Sepal.Length
viz_scatter_x(iris, Sepal.Width )

library(tidyverse)
devtools::session_info() %>%
  yaml::write_yaml("sessioninfo.yaml")

as.data.frame(do.call(rbind, lapply(mget(ls()), digest::digest))) %>%
  rownames_to_column() %>%
  saveRDS(.,"md5s.rds")


# could be useful for teaching demos
server = livecode::serve_file(interval = 0.5)

# We can write a function to generate a report 
# for each state and each year:

render_one <- function(region, year) {
  # assuming the output format of input.Rmd is PDF
  rmarkdown::render(
    'input.Rmd',
    output_file = paste0(region, '-', year, '.pdf'),
    params = list(region = region, year = year)
  )
}


# Then we can use nested for-loops 
# to generate all reports:
  
  for (region in region_name) {
    for (year in 2000:2020) {
      render_one(region, year)
    }
  }