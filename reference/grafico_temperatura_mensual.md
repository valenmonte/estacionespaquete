# Gráfico de temperatura media de todas las estaciones por mes

Calcula la temperatura media mensual (promedio de todas las estaciones)
y devuelve un gráfico con 1 valor por mes (enero, febrero, etc.).

## Usage

``` r
grafico_temperatura_mensual(datos, titulo = "Temperatura media mensual")
```

## Arguments

- datos:

  data.frame con los datos

- titulo:

  título del gráfico

## Value

objeto ggplot

## Examples

``` r
grafico_temperatura_mensual(datos_ejemplo)
```
