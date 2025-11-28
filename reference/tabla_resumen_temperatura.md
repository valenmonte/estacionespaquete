# Tabla resumen de temperatura por estación

Tabla resumen de temperatura por estación

## Usage

``` r
tabla_resumen_temperatura(datos, estaciones)
```

## Arguments

- datos:

  data.frame con los datos (debe tener columnas `id` y
  `temperatura_abrigo_150cm`).

- estaciones:

  vector de ids de estaciones a incluir.

## Value

data.frame con columnas: id, promedio, desviacion.

## Examples

``` r
data("datos_ejemplo")
tabla_resumen_temperatura(
  datos_ejemplo,
  estaciones = c("NHO472", "NHO437")
)
#> # A tibble: 0 × 3
#> # ℹ 3 variables: id <chr>, promedio <dbl>, desviacion <dbl>
```
