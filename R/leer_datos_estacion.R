#' Descargar y leer datos de una estacion meteorologica
#'
#' Descarga el archivo CSV de una estacion desde el repositorio del curso
#' y lo lee como un data frame.
#' @importFrom dplyr %>%

#' @param id_estacion Codigo de la estacion, por ejemplo "NH0437".
#' @param ruta Ruta donde se guardara el archivo CSV descargado.
#'
#' @return Un data frame con los datos de la estacion seleccionada.
#'
#'  @examples
#' leer_datos_estacion("NHO472", "datos/estacion.csv")
#' @export
leer_datos_estacion <- function(id_estacion, ruta) {
  url_base <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"
  url <- paste0(url_base, id_estacion, ".csv")
  utils::download.file(url, destfile = ruta)
  datos <- utils::read.csv(ruta)
  return(datos)
}
