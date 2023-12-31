#install.packages("rvest")
#install.packages("dplyr")

library(rvest)
library(dplyr)

url <- "http://quotes.toscrape.com/"
page <- read_html(url)

text <- page %>% html_nodes(".text") %>% html_text()
author <- page %>% html_nodes(".author") %>% html_text()

quotes <- data.frame(text, author, stringsAsFactors = FALSE)
write.csv(quotes, "quotes.csv")
View(quotes)


#Retrieved from https://mikaranja.com/project/web-scraping-with-r/