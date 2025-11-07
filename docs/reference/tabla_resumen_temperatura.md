# Tabla resumen de temperatura por estación

Calcula la media y el desvío estándar de la temperatura de abrigo a 150
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
