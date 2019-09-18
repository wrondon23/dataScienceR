#Leer Xml
install.packages("bitops")
install.packages("XML")
library(XML)
library(htmltab)


##---------------------------------------------------------------------------------------

# PONER EL XML EN UNA VARIABLE

url <- "./data/tema1/cd_catalog.xml"


xmldoc <- xmlParse(url) #parces la ruta

rootnode <- xmlRoot(xmldoc) #ir al root del archivo

cds_data <- xmlSApply(rootnode, function(x) xmlSApply(x, xmlValue))  #crear una matriz de valores

cds_catalogo <- data.frame(t(cds_data), row.names = NULL) #crear un data set con los valores 

#--------------------------------------------------------------------------------------------

##leer una pagina html

population_url <- "./data/tema1/WorldPopulation-wiki.htm"
tables <- readHTMLTable(population_url)

tables[[6]]

#--------------------------------------------------------------------------------------------
baseball_stadistic <-  "http://basketball.realgm.com/nba/stats"

many_tab <- readHTMLTable(baseball_stadistic)


url <-"https://www.baseball-reference.com/players/r/ramirma02.shtml"

many_tab <- htmltab(doc = baseball_stadistic, wichi)
