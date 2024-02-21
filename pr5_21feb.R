#Ejercicio 1
n_registros <- 200
set.seed(123)

data_frame <- data.frame( 
  yacimiento = sample(1:10, n_registros, replace = TRUE),
  tipo_artefacto <- sample(c("Pottery","Tools","Jerelry","Wapons"),n_registros, replace = TRUE),
  Numero_artefacto <- sample(1:1000, n_registros, replace = TRUE),
  contexto <- sample(c("Habitacional","Funerario", "Otros"),n_registros, replace = TRUE),
  latitud <- sample(0:90, n_registros, replace = TRUE),
  longitud <- sample(-180:180, n_registros, replace = TRUE))
print(data_frame)


#Ejercicio 2
Numero_artefacto <- as.numeric(Numero_artefacto)
mean(Numero_artefacto)
quantile(Numero_artefacto)

#Ejercicio 3

histograma <- hist((Numero_artefacto), main="Histograma",col="red")

print(hist)

#Ejercicio 4

boxplot((Numero_artefacto), main="diagrama",col="blue")
print(boxplot)

#Ejercicio 5

#Ejercicio 6

ggplot(data_frame, aes(x=longitud, y=latitud)) +
  geom_bin2d() +
  labs(title="densidad de artefactos", x="longitud",y="latitud")

#Ejercicio 7

total_artefactos <- sum(data_frame$Numero_artefacto)
print(total_artefactos)

#Ejercicio 8

mean(total_artefactos)

#Ejercicio 9

sd(x=Numero_artefacto)

#También se puede hacer así

desviacion_estandar <-sd(Numero_artefacto)
print(desviacion_estandar)

#Ejercicio 10

which.max(total_artefactos)

#Ejercicio 11

                          

#Ejercicio 12
boxplot (Numero_artefacto)