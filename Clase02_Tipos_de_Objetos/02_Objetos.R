# 01_Objetos.R (05/01/22)
# Script con funciones básicas para manipular objetos en R

# En la clase anterior aprendiste a realizar algunos cálculos básicos en R. 
# En su forma más sencilla, viste como R puede usarse como una calculadora y para programar formulas y ecuaciones.

# Ahora verás que R puede manipular distintos tipos de objetos así como objetos de diferentes clases....
# Veamos algunos ejemplos:

# Parte 1. Vectores y factores ####

# Vectores: el vector es una serie de elementos uno tras otro
# El elemento más básico de R es un vector, de hecho, TU ya has trabajado con un vector muy simple, un vector de un elemento
# Cuando haces esto:
kiki <- 5
kiki

# Estas generando un vector de longitud 1
# Como podemos saber si "kiki" es un vector? preguntemosle a R:
is.vector(kiki)

# Para generar un vector utilizaremos el comando c(); "c" que viene de "concatenar":
kiki <- c(5,6,7,8,10)
kiki

# kiki ahora es ese conjunto de números,
# lenght nos permite saber la longitud de un vector
length(kiki)

# Observa lo que ocurre si sumo un vector:
kiki + 1

# R reliza iteraciones sobre cada elemento de un vector sumando "1" a cada elemento!
# Puedes usar esto para realizar simultaneamente operaciones complejas con varios elementos a la vez:
sqrt(kiki) + log(kiki)**5

# Podemos realizar la suma de dos vectores en R:
kiki + c(1, 2, 3, 4, 5)
# El primer elemento de kiki se sumo con el primer elmento del segundo vector, el segundo con el segundo y asi...
# Incluso podemos sumar vectores de diferente tamaño
c(1, 2) + c(2, 2, 2, 2)
# OBSERVA COMO R SUMO EL PRIMER VECTOR CON LOS DOS PRIMEROS ELEMENTOS DEL SEGUNDO
# Y LUEGO CON LOS DOS ULTIMOS

# La regla es que al realizar operaciones vectores de distinto tamaño, el vector grande sea multiplo del pequeño
# Nota la siguiente advertencia:
c(1, 2, 3) + c(2, 2, 2, 2)

# En este momento los elementos dentro de kiki son númericos, gracias a eso podemos hacer operaciones matemáticas, mira:
class(kiki)
is.numeric(kiki)

# Y podemos hacer algunos calculos rapidos como:
# sumar sus elementos
sum(kiki)
# promediarlos
mean(kiki)
# desviacion estandar:
sd(kiki)
# Y summary nos da información de resumen
summary(kiki)

# PERO existen vectores de otras clases en R, cada uno asociado a ciertos comandos
# POR EJEMPLO,
# Tu sabes que existen variables continuas (con décimales) y variables discretas (de puros numeros enteros)
# Kiki en este momento esta guardado como una variable continua, a pesar de que no "veamos" decimales
# Observa:
class(kiki)
kiki <- kiki + 0.1
kiki
class(kiki)

# Ahora generaremos un vector de numeros enteros (discretos) agregando una "L" despues del numero:
# TIP: observa como uso la misma función "c"
kiki.discreto <- c(5L, 3L, 1L, 10L, 8L)
class(kiki.discreto)
# Observa como al sumarle un decimal el vector deja de pertenecer a la clase de enteros
class(kiki.discreto + 0.1)
# No es muy usual usar la clase enteros pero lo puedes utilziar para guardar variables discretas:
# Por ejemplo: # de especies en ecosistemas

# Finalmente para evitar eso de andar agregando "Ls" al final, existen comandos para hacernos la vida más facil
kiki
kiki.discreto <- as.integer(kiki)
kiki.discreto
class(kiki.discreto)

# R también puede generar vectores de texto:
# El texto en R se va a definir siempre por tener comillas:
kiki.textual <- c("Kiki", "es", "un", "gato")
kiki.textual
class(kiki.textual)

# Evidentemente con vectores de texto no funcionaran las operaciones:
kiki.textual + 5

# PERO funcionarán ptros comandos:
paste0("Rodrigo dijo: ", kiki.textual)

# Los vectores textuales nos sirven para guardar categorías.

# Un primo cercano a los vectores textuales son los factores, los factores en R, permiten
# guardar un conjunto de elementos textuales Y especificar los distintos niveles que componen al factor...
# Por ejemplo
razas.gatos <- c("siames", "bombay", "snoweshoe", "kikisaurio")
append(razas.gatos, "Garfield") # Append <- agrega al final de un vector un elemento nuevo

# En un factor puedes guardar elementos que hayas observado en un muestreo, por ejemplo, pero agregar en los niveles TODOS los elementos que componen a ese factor....
razas.gatos <- factor(razas.gatos, levels = append(razas.gatos, "Garfield"))
razas.gatos
# Los elementos de nuestro vector llegan hasta kikisaurio, PERO gracias a los niveles sabemos que ademas existe la raza Garfield....

# También los factores nos dicen los elementos diferentes que componen grupos muy muy grandes de elementos
factor(c(rep("Luna", 5), rep("Bicho", 10), rep("Kiki", 50))) # Observa como use aqui factor, c y rep

# Los factores SON MUY IMPORTANTES para hacer graficos chidos!

# Regresando a los vectores también existen vectores lógicos
# Por ejemplo
# Recordemos que kiki es un conjunto de números:
kiki
# Imagina que quieres saber de los 5 elemenos en kiki ¿cuales son mayores que 7:
# Podríamos hacer esto
kiki.logico <- kiki > 7
kiki.logico

# "FALSE" Y "TRUE" o "F" y "T" son terminos especiales de R para indicar si algo es verdad o no
# por eso NO puedes usarlas para guardar variables
kiki.logico <- c(F, T, T, T, T, F)
kiki.logico

# Seguramente estos son los vectores y clases de datos en R más improtantes en un contexto de biología
# Veamos como acceder a elementos de vectores:
kiki.textual

# Si queremos un elemento en especifico, por ejemplo el segundo:
kiki.textual[2]

# Si queremos un rango de elementos
kiki.textual[c(1, 2, 3)]
# o
kiki.textual[1:3]

# Si queremos los que cumplan alguna condicion
kiki
# Por ejemplo, los mayores a 7
kiki[kiki > 7]

# Por último tambien podemos "nombrar" cada elemento de un vector,
# Por ejemplo, el color de cada gato
kiki.nombrado <- c("Kiki" = "Gris", "Luna" = "Blanca", "Bicho" = "Negro")
kiki.nombrado
# O la edad de cada gato
kiki.nombrado <- c("Kiki" = .5, "Luna" = 10, "Bicho" = 13)
kiki.nombrado

# Y usar esos nombres para acceder a ciertos elementos del vector:
kiki.nombrado["Luna"]

# Parte 2. Data.frames
