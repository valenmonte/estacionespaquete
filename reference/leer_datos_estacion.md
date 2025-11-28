# Descargar y leer datos de una estacion meteorologica

Descarga el archivo CSV de una estacion desde el repositorio del curso y
lo lee como un data frame.

## Usage

``` r
leer_datos_estacion(id_estacion, ruta)
```

## Arguments

- id_estacion:

  Codigo de la estacion, por ejemplo "NH0437".

- ruta:

  Ruta donde se guardara el archivo CSV descargado.

## Value

Un data frame con los datos de la estacion seleccionada.

@examples leer_datos_estacion("NHO472", "datos/estacion.csv")
