#' Grafico de temperatura media de todas las estaciones por mes
#'
#' Calcula la temperatura media mensual (promedio de todas las estaciones)
#' y devuelve un grafico con 1 valor por mes (enero, febrero, etc.).
#'
#' @param datos data.frame con los datos
#' @param titulo titulo del grafico
#' @importFrom dplyr %>% mutate group_by summarise
#' @return objeto ggplot
#' @examples
#' grafico_temperatura_mensual(datos_ejemplo)
#' @export
grafico_temperatura_mensual <- function(datos, titulo = "Temperatura media mensual") {

  datos_mensual <- datos %>%
    dplyr::mutate(
      mes = lubridate::month(as.Date(fecha), label = TRUE, abbr = TRUE)
    ) %>%
    dplyr::group_by(mes) %>%   # AGRUPO SOLO POR MES (enero, feb, mar...)
    dplyr::summarise(
      temperatura_media = mean(temperatura_abrigo_150cm, na.rm = TRUE),
      .groups = "drop"
    )

  ggplot2::ggplot(datos_mensual, ggplot2::aes(x = mes, y = temperatura_media, group = 1)) +
    ggplot2::geom_line() +
    ggplot2::geom_point() +
    ggplot2::labs(
      x = "Mes",
      y = "Temperatura media (°C)",
      title = titulo
    ) +
    ggplot2::theme_minimal()
}
