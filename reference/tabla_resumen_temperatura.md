# Tabla resumen de temperatura por estacion

Calcula la media y el desvio estandar de la temperatura de abrigo a 150
cm para un conjunto de estaciones.

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
tabla_resumen_temperatura(datos_ejemplo)
#> Error in dplyr::filter(., id %in% estaciones): ℹ In argument: `id %in% estaciones`.
#> Caused by error:
#> ! argument "estaciones" is missing, with no default
```
