# Grafico de temperatura media mensual

Calcula la temperatura media de todas las estaciones para cada mes y
devuelve un grafico con un valor por mes (enero, febrero, etc).

## Usage

``` r
grafico_temperatura_mensual(datos, titulo = "Temperatura media mensual")
```

## Arguments

- datos:

  data.frame con los datos. Debe tener columnas `fecha` y
  `temperatura_abrigo_150cm`.

- titulo:

  titulo del grafico. Se usa como titulo del grafico.

## Value

Un objeto `ggplot` con la temperatura media mensual.

## Examples

``` r
if (requireNamespace("estacionespaquete", quietly = TRUE)) {
  library(estacionespaquete)
  data("datos_ejemplo")
  grafico_temperatura_mensual(datos_ejemplo)
}
```
