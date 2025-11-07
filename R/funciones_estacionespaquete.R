#' Descargar y leer datos de una estacion meteorologica
#'
#' Descarga el archivo CSV de una estacion desde el repositorio del curso
#' y lo lee como un data frame.
#'
#' @param id_estacion Codigo de la estacion, por ejemplo "NH0437".
#' @param ruta Ruta donde se guardara el archivo CSV descargado.
#'
#' @return Un data frame con los datos de la estacion seleccionada.
#' @export
leer_datos_estacion <- function(id_estacion, ruta) {
  url_base <- "https://raw.githubusercontent.com/rse-r/intro-programacion/main/datos/"
  url <- paste0(url_base, id_estacion, ".csv")
  download.file(url, destfile = ruta)
  datos <- read.csv(ruta, stringsAsFactors = FALSE)
  return(datos)
}
#' Tabla resumen de temperatura por estacion
#'
#' Calcula la media y el desvio estandar de la temperatura de abrigo
#' a 150 cm para un conjunto de estaciones.
#'
#' @param datos data.frame con los datos (debe tener columnas `id`
#'   y `temperatura_abrigo_150cm`).
#' @param estaciones vector de ids de estaciones a incluir.
#'
#' @return data.frame con columnas: id, promedio, desviacion.
#' @export
tabla_resumen_temperatura <- function(datos, estaciones) {
  datos %>%
    dplyr::filter(id %in% estaciones) %>%
    dplyr::group_by(id) %>%
    dplyr::summarise(
      promedio   = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      desviacion = stats::sd(temperatura_abrigo_150cm, na.rm = TRUE),
      .groups = "drop"
    )
}

#' Grafico de temperatura media mensual por estacion
#'
#' Calcula la temperatura media mensual por estacion y devuelve
#' un grafico con las series de cada estacion.
#'
#' @param datos data.frame con los datos.
#' @param titulo titulo del grafico.
#'
#' @return objeto ggplot.
#' @export
grafico_temperatura_mensual <- function(datos, titulo = "Temperatura") {
  datos %>%
    dplyr::mutate(
      mes = lubridate::floor_date(as.Date(fecha), "month")
    ) %>%
    dplyr::group_by(id, mes) %>%
    dplyr::summarise(
      temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      .groups = "drop"
    ) %>%
    ggplot2::ggplot(ggplot2::aes(x = mes, y = temperatura_media, color = id)) +
    ggplot2::geom_line() +
    ggplot2::labs(
      x = "Mes",
      y = "Temperatura media (°C)",
      title = titulo,
      color = "Estación"
    ) +
    ggplot2::theme_minimal()
}
