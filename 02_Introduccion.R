#Empecemos..... Bienvenidos! :
#:Como hacemos un comentario en R?, vamos a utilizar el |
## Para obtener informacion sobre una funcion 1
help("mean")
?mean 

## Para asignar valores a una variable 1
x <-5 
X = 5 #esta manera de asignar es muy poco utilizada


#operadores

a <- 2+4
print(a)

b <- 10-3
print (b)

c <- 5*5
print(c)

d<- 4/2
print (d)

e <- 13 %%3
print(e)

d < e
b>=a
c!=d

#un poco mas

a<-1
f <-a + 1
print (f)

f1 <- f+3

#cuanto me daria f1?
print(f1)


## para crear un vector
v <- c(1,2,3,4,5) #numerico
b <- c(TRUE, FALSE, TRUE, FALSE, TRUE) #logico
c <- c("a","b","c","d","e") #de caracteres

# Si se mezclan con character todo se convierte a char

z <- c(1,2,"a","b") #me lo convierte en char

#otra opción es a través del uso de la función "assign()"
assign("v1", c(1,2,3,4,5)) #numerico
print(v1)

assign("b1", c(TRUE, FALSE, TRUE, FALSE, TRUE)) #logico
print(b1)

cadena <- c ("Hola","Mundo","Estoy","Aprendiendo","R")
print(cadena)

#si deseamos agregar un elemento adicional
x <- c(2,3,4,5)
#Se sobre escriben la variable mas los nuevos elementos
x <- c(x,6,7,8,9)
print(x)

#combinando dos vectores
mi_vector_1 <- c(1,5,7)
print(mi_vector_1)

mi_vector_2 <- c(6,7,8)
print(mi_vector_2)

mi_vector_3 <- c(mi_vector_1, mi_vector_2)
print(mi_vector_3)

#si quiere sumar...
mi_vector <- c(1,5,7)
print(mi_vector+2) #3,7,9

#si quiere multiplicar...
mi_vector <- c(1,5,7)
print(mi_vector*3) #3,15,21

#IMPORTANTE!!
#R es key sensitive es decir es sensible a mayusculas
#para R no es lo mismo el objeto "nombre" que "Nombre"

## valores no existentes (NA)
n <- c(1,2, NA, 4,5,NA) ##retona un vector de 6 elementos
print(n)

#Pregunta si el objeto tiena valores NA

is.na(n) ##retorna verdaderp si el valor es NA

n[is.na(n)] #retorna solo valores NA

n[!is.na(n)] #retorna valores no NA

# Asignar un valor 

n[is.na(n)] <- 0 #asigna 0 a los valores NA

print(n)

##matrices

#ordenada por filas

m <- matrix(data = c(1,2,3,4),nrow=2,ncol =2 , byrow=TRUE) ##crea una matriz

#Ordenada por columnas

m2 <- matrix(data = c(1,2,3,4),nrow=2,ncol =2 , byrow=FALSE) ##crea una matriz

m2

# Agregar nombre a las filas y a las columnas a traves de listas Filas/Columnas

m3 <- matrix(c(1,2,3,4), nrow=2, ncol=2, dimnames =list(c("A","B"), c("C","D")))
m3
print(3)

# Consultar la matriz

m[1,2] ##retorna el elemento fila 1 columna 2
m[1,] #retorna todos los elementos fila 1
m[,1] #retorna todos los elementos columna 1

m[1,1] <- 9 ## asigna 9 a elementos fila 1 columna 1
m

m[1,] <- 0 ## asigna 0 a elementos fila 1
m

#Combina por columna, cada vector es una columna

cc<- cbind(c(1,2,3,4), c(9,8,7,6)) ## crea matriz combinada
cc

#Combina por fila, cada vector es una fila

cr<- rbind(c(1,2,3,4), c(9,8,7,6)) ## crea matriz combinada
cr

print(m)

# Cambiar el nombre de las filas de la matriz con listas

rownames(m) <- list("juan","pedro") ##asigna nombre
m

# Cambiar el nombre de las columnas de la matriz con listas

colnames(m) <- list("edad", "hijos") ##asigna nombre
m

# Encontrar valores por la intercepcion de atributos y registros

m["juan", "edad"] ##retorna el valor de elemento definido
m["pedro", "edad"]




##Hablemos ahora de listas
l <- list(names=c("juan","pedro"), age=c(10,11)) 
View(l)



#lo convertimos en dataframe para visualizarlo mejor
dataFrame <- data.frame(l)
View(dataFrame)

#por ultimo ... importemos un archivo de csv y creamos proyecto