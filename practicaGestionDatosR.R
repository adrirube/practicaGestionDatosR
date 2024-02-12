nuevo_dir <- 'C:/practicaGestionDatosR' 
setwd(nuevo_dir)

#1
vector_edad_descubrimiento <- c(8,56,68,70,92)
mean(vector_edad_descubrimiento)


#2
vector_cantidad_artefactos <- c(5,7,56,12,50,45)
sum(vector_cantidad_artefactos)

#3
vector_profundidad_hallazgo <- c(3,5,6,6,11,98,45,37,69)
max(vector_profundidad_hallazgo)

#4
vector_materiales_encontrados <- c('ceramica','restos oseos','restos textiles','vidrio','escoria','minerales')
length(vector_materiales_encontrados)

#5
vector_años_excavaciones <- c(1912,1923,1954,1999,2014)
length(vector_años_excavaciones)

#6
matriz1 <-matrix(c(1,2,4,8,10,12,14,16), nrow = 2, ncol = 4, byrow = TRUE)
rowSums(matriz1) 
which.max(rowSums(matriz1))

#7
matriz2 <-matrix(c(70,80,90,100,110), nrow = 2, ncol = 4, byrow = TRUE)
colMeans(matriz2)
which.max(colMeans(matriz2))

#8
matriz3 <-matrix(c(100,200,300,400,500,600,700), nrow = 2, ncol = 4, byrow = TRUE)
colSums(matriz3)
which.max(colSums(matriz3))

#9
matriz4 <-matrix(c(20,40,60,80,10), nrow = 2, ncol = 4, byrow = TRUE)
colMeans(matriz4)
which.min(colMeans(matriz4))

#10
matriz5 <-matrix(c(5,6,7,8,8,99,67,65), nrow = 2, ncol = 4, byrow = TRUE)
mode <- function(matriz5) {
  return(as.numeric(names(which.max(table(matriz5)))))
}

#11
set.seed(123)
n_registros <- 10

encontrados <- sample(c('Jerez','Sevilla','Valencina'), n_registros, replace = TRUE)
tipo_artefaco <- sample(c('Restos oseos','cerámica','metales'), n_registros, replace = TRUE)
fecha_descubrimiento <- sample(1932:2012, n_registros, replace = TRUE)
descripción <- sample(c('Bueno','lo ha dado todo','nefasto'), n_registros, replace = TRUE)

registro_artefactos <- data.frame(
  encontrados = encontrados,
  tipo_artefaco = tipo_artefaco,
  fecha_descubrimiento = fecha_descubrimiento,
  descripción = descripción
)
print(registro_artefactos)

#12
set.seed(123)
n_registros <- 5

realizadas <- sample(c('Grupo 1','Grupo 2','Grupo 3'), n_registros, replace = TRUE)
sitio <- sample(c('Cordoba','Sevilla','Almeria'), n_registros, replace = TRUE)
fecha_inicio <- sample(1990:2005, n_registros, replace = TRUE)
fecha_final<- sample(2018:2020, n_registros, replace = TRUE)

excavaciones_equipo <- data.frame(
  realizadas = realizadas,
  sitio = sitio,
  fecha_inicio = fecha_inicio,
  fecha_final = fecha_final
)
print(excavaciones_equipo)

#13
set.seed(123)
n_registros <- 10

descubiertos <- sample(c('Sevilla','Carmona','Cadiz'), n_registros, replace = TRUE)
sitio <- sample(c('Taller','Pontil','tumba'), n_registros, replace = TRUE)
edad <- sample(c(50,60,75,95,10), n_registros, replace = TRUE)
sexo <- sample(c("Hombre","Mujer"), n_registros, replace = TRUE)
restos_textiles <- sample(c('80% conservado','60% conservado','30% conservado','20% conservado','1% conservado'), n_registros, replace = TRUE)

datos_esqueletos <- data.frame(
  descubiertos = descubiertos,
  sitio = sitio,
  edad = edad,
  sexo = sexo,
  restos_textiles = restos_textiles
)
print(datos_esqueletos)

#14
set.seed(123)
n_registros <-7

ubicación <- sample(c('Yacimiento 1', 'Yacimiento 2','Yacimiento 3', 'Yacimiento 4'), n_registros, replace = TRUE)
sitio <- sample(c('circo','tumba','horno'), n_registros, replace = TRUE)
latitud <- sample(c(7:24), n_registros, replace = TRUE)
longitud <- sample(c(40:200), n_registros, replace = TRUE)
altitud <- sample(c(600:800), n_registros, replace = TRUE)

ubicaciones_geográficas <- data.frame(
  ubicación = ubicación,
  sitio = sitio,
  latitud = latitud,
  longitud = longitud,
  altitud = altitud
)
print(ubicaciones_geográficas)
