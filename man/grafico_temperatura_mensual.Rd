\name{grafico_temperatura_mensual}
\alias{grafico_temperatura_mensual}
\title{Grafico de temperatura media mensual}
\usage{
grafico_temperatura_mensual(datos, titulo = "Temperatura media mensual")
}
\arguments{
  \item{datos}{data.frame con los datos. Debe tener columnas \code{fecha}
  y \code{temperatura_abrigo_150cm}.}

  \item{titulo}{titulo del grafico. Se usa como titulo del grafico.}
}
\value{
Un objeto \code{ggplot} con la temperatura media mensual.
}
\description{
Calcula la temperatura media de todas las estaciones para cada mes
y devuelve un grafico con un valor por mes (enero, febrero, etc).
}
\examples{
if (requireNamespace("estacionespaquete", quietly = TRUE)) {
  library(estacionespaquete)
  data("datos_ejemplo")
  grafico_temperatura_mensual(datos_ejemplo)
}
}
