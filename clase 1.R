library(readxl)
fb<- read_excel("~/R/LA MOLINA 2014 POTATO WUE (FB).xlsx", 
                                            sheet = "fb")
View(fb)

library(tidyverse)
# Asegúrate de tener instalado ggplot2
if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

# Cargar la librería
library(ggplot2)

# Crear el gráfico de boxplot
ggplot(data = fb, aes(x = geno, y = spad_29, fill = riego)) +
  geom_boxplot() +
  labs(
    title = "Boxplot de SPAD_29 por Genotipo y Riego",
    x = "Genotipo",
    y = "SPAD_29",
    fill = "Riego"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
#area folear
# manipulacion de objetos 
a <- "hola"
b <- "fica"
paste(a, b)
x <- "untrm"
paste(a, x)
# pipe 
nota <- c(19, 17, 15 , 18)
rnota <- nota -2
prom <- mean 
