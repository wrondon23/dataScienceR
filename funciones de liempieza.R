#replanzar  missing
#1- Cargar el data set 

data = read.csv("./data/tema1/missing-data.csv", na.strings = "")

#replazar los campos NA por el promedios en 

data$Income.meand = ifelse(is.na(data$Income),
                           mean(data$Income, na.rm = TRUE),
                           data$Income
                           )


#replazo aleatoreo
#cracion de la funcion 

replazo.Aleatorio(X){
  missing = is.na(x)
  n.missing = sum(missing)
  x.obs = x[!missing]
  inputed <- x
  
  inputed[missing] = sample(x.obs, n.missing, replace = TRUE)
  
}



