#' Datos meteorológicos de ejemplo
#'
#' Conjunto de datos con mediciones de temperatura del aire
#' en abrigo a 1,50 m para distintas estaciones meteorológicas.
#' Estos datos se usan en los ejemplos del paquete.
#'
#' Cada fila corresponde a una observación (un día en una estación).
#'
#' @format Un data frame con varias filas y las siguientes columnas:
#' \describe{
#'   \item{id}{código de la estación (cadena de texto).}
#'   \item{fecha}{fecha de la medición (clase Date).}
#'   \item{temperatura_abrigo_150cm}{temperatura del aire en abrigo,
#'   a 1,50 m de altura, en grados Celsius.}
#' }
#'
#' @usage data("datos_ejemplo")
#'
#' @source Datos adaptados para el Ejercicio Transversal de la materia.
"datos_ejemplo"
