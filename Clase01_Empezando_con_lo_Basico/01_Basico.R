# Luis Rodrigo Arce Valdés
# Script con funciones básicas para aprender a usar R

# 1era parte: calculadora y funciones ####

# En R (así como en cualquier lenguaje de programación existen 2 tipos de líneas):
# 1.- Comentarios: Sirven para explicar nuestro código, no son leídos por el programa, permiten recordarnos como funcionan nuestros scripts
# 2.- Código: Ejecutan la acción que necesitamos

# En R los comentarios inician con un gato: "#", todas las líneas que inicien así no son leídas
# Los códigos no llevan "#"

# ESCRIBE COMENTARIOS PARA QUE SEAN LEÍDOS POR HUMANOS Y CÓDIGO PARA QUE SEA LEÍDO POR MAQUINAS
# Aprovecha los colores de Rstudio para diferenciar entre comentarios y código

# En su estructura más simple nosotros podemos usar R como una calculadora:
5 + 8
3*2
10     /     2 #Fijate como el espaciado en R no afecta su funcionamiento
(5 - 2)*10 # Y como también puedo escribir comentarios así

# Potencias:
5**3
5^5

# También podemos guardar el resultado de un calculo en una variable:
# Para eso usamos "<-", "=" o "->". Con el primero y el ultimo observamos la dirección
A <- 5 + 1
B = 2
A + B -> C
C

# TIP: Conviene más usar "<-" o "->", después veremos que "=" puede usarse para más cosas
# Fijate ademas como puedes nombrar tus variables como a ti más te guste:
tres <- 3
tres

gato <- 5.1
gato

tres.gatos <- tres * gato
tres.gatos

# TIP: Nombra tus variables (u objetos como se llaman en R) de forma intuitiva
# PELIGRO: "F" Y "T" son nombres PROHIBIDOS para variables, ¡NUNCA LAS USES!
# Veremos después porque...

# En R studio veras que en "Environment" aparecen ahora A, B y C, y los otros objetos que creamos, ahora son elementos que viven en la memoria de R
# Cada vez que los usamos R los carga de su memoria:
C - A
A*B
tres.gatos*C

# Usar R así; como calculadora, es muy aburrido y sin chiste, afortunadamente R cuenta con funciones.
# Las funciones en R siguen esta estructura: función(objeto, argumentos)
# Supongamos que queremos redondear un valor a "n" décimales:
round(5.37725462, digits = 2) #round() es la función, 5.37725462 el objeto, y digits un argumento
round(5.37725462, 2) # También funciona así, por default R entiende que el primer valor es objeto y el segundo variable
round(5.37725462, 3) # Si cambiamos el argumento cambia la forma en que funciona round

# Podemos usar funciones con objetos en la memoria
Kiki <- 5.37725462
round(kiki, 3)

# ...
# Nos apareció esto: "Error: object 'kiki' not found"
# Ten cuidado R es sensible a mayusculas, nosotros tenemos un Kiki, pero no un kiki
round(Kiki, 3)

# Y podemos guardar el resultado de una función en otro objeto
mini.Kiki <- round(Kiki, 3)
mini.Kiki

# También podemos sobreescribir el valor de un objeto por otro:
mini.Kiki <- round(10.8976 + 4.67291, 1)
mini.Kiki

# Como sabemos "como funciona" cada comando?
# Existe un comando para ayudarnos:
help(round)

# Y bueno.... como sabemos que comando usar si no conocemos TODOS los comandos en R:
# Googlealo!
# Lo más probable, alguien en el mundo ya pregunto lo que quieres saber....
# Por ejemplo, ¿Como hacer una raíz cuadrada?
# Tips:
# + Googlea en inglés
# + Usa términos generales, googlea "square root in r" en lugar de "square root of mini.Kiki object"
# Ayudame a descubrir como hacer raiz cuadrada y agregalo a este script cuando lo descubras, sacando la raíz de mini.Kiki:



# Si vemos nuestro environment tenemos muchos objetos en memoria: A, B, C, Kiki, mini.Kiki, etc...
# Limpiemos un poco y eliminemos de la memoria los que ya no nos sirven:
A
rm(A, B, C, mini.Kiki, gato, tres, tres.gatos)
A
# Nos aparece el error "Error: object 'A' not found" porque acabamos de eliminarlo
# Agüas, una vez que elimines un objeto NO podras recuperarlo.
# .....
# A menos que corras de nuevo tu script hasta la línea antes de borrarlo (93)
# Con un script evitas accidentes :)

# Finalmente obseva como podemos anidar funciones dentro de otras,
# por ejemplo, queremos sacar el logaritmo base 5 de "Kiki", sacarle la raíz y redondearlo a 3 decimales:
micro.Kiki <- round(sqrt(log(Kiki, base = 5)), digits = 3) # Fijate MUY BIEN en los parentesis y en los argumentos de cada función
micro.Kiki
