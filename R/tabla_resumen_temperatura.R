#' @title Tabla resumen de temperatura por estación
#' @name tabla_resumen_temperatura
#' @aliases tabla_resumen_temperatura
#'
#' Calcula la media y el desvío estándar de la temperatura de abrigo
#' a 150 cm para un conjunto de estaciones.
#'
#' @param datos data.frame con los datos (debe tener columnas `id`
#'   y `temperatura_abrigo_150cm`).
#' @param estaciones vector de ids de estaciones a incluir.
#'
#' @return data.frame con columnas: id, promedio, desviacion.
#'
#' @importFrom dplyr %>% mutate group_by summarise
#'
#' @examples
#' data("datos_ejemplo")
#' tabla_resumen_temperatura(
#'   datos_ejemplo,
#'   estaciones = c("NHO472", "NHO437")
#' )
#'
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
