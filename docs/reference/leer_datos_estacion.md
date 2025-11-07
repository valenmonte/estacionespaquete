# Descargar y leer datos de una estación meteorológica

Descarga el archivo CSV de una estación desde el repositorio del curso y
lo lee como un data frame.

## Usage

``` r
leer_datos_estacion(id_estacion, ruta)
```

## Arguments

- id_estacion:

  Código de la estación, por ejemplo "NH0437".

- ruta:

  Ruta donde se guardará el archivo CSV descargado.

## Value

Un data frame con los datos de la estación seleccionada.
