if(!require(remotes)) install.packages("remotes")
remotes::install_github("rstudio/bookdown")
library(bookdown)
books<-list.files(pattern = "*.yml")
for(b in books){
  render_book("index.Rmd", config = b)
}