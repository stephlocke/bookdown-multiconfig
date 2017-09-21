if(!require(remotes)) install.packages("remotes")
remotes::install_github("rstudio/bookdown#465")
library(bookdown)
books<-list.files(pattern = "*.yml")
for(b in books){
  render_book("index.Rmd", config_file = b)
}