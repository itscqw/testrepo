

if(require(pacman)==FALSE) install.packages("pacman")
pacman::p_load(tidyverse, # for manipulating data
               tidyquant, # getting the stock data in a tidy format 
               magrittr, # for two way pipe
               wbstats, 
               jsonlite, #world bank api
               lubridate,#fix dates
               dbplyr,
               rvest) 

"https://bulletin.miamioh.edu/courses-instruction/fin/" %>%
  read_html() %>% 
  html_nodes("div.courseblock > p.courseblocktitle>strong") %>% 
  html_text()->coursedesc
coursedesc

