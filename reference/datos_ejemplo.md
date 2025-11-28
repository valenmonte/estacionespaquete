# Datos meteorológicos de ejemplo

Conjunto de datos con mediciones de temperatura del aire en abrigo a
1,50 m para distintas estaciones meteorológicas. Estos datos se usan en
los ejemplos del paquete.

## Usage

``` r
data("datos_ejemplo")
```

## Format

Un data frame con varias filas y las siguientes columnas:

- id:

  código de la estación (cadena de texto).

- fecha:

  fecha de la medición (clase Date).

- temperatura_abrigo_150cm:

  temperatura del aire en abrigo, a 1,50 m de altura, en grados Celsius.

## Source

Datos adaptados para el Ejercicio Transversal de la materia.

## Details

Cada fila corresponde a una observación (un día en una estación).
