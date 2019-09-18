 ##Cargar csv con cabecera

auto <- read.csv("./data/tema1/auto-mpg.csv", header = T, sep = ",", stringsAsFactors = FALSE, strings.na="")

names(auto)
 
#-------------------------------------------------------------------------------
#Cargar csv sin cabecera 

auto_no_header <- read.csv("./data/tema1/auto-mpg-noheader.csv", header = F)

head(auto_no_header, 4) 

#--------------------------------------------------------------------------------
#Cargar csv sin cabecera y colocar las cabeceras personalizada 

auto_custumer_header <- read.csv("./data/tema1/auto-mpg-noheader.csv", 
                                 header = F,
                                 col.names = c("numero",
                                               "millas_por_galon",
                                               "cilindrada",
                                               "desplazamiento",
                                               "caballo_de_potencia",
                                               "peso",
                                               "aceleracion",
                                               "año",
                                               "Modelo"
                                               )
                                 )