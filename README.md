<!-- README.md is generated from README.Rmd. Please edit that file -->

# estacionespaquete

<!-- badges: start -->

[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental) [![R-CMD-check](https://github.com/valenmonte/estacionespaquete/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/valenmonte/estacionespaquete/actions/workflows/R-CMD-check.yaml) [![Codecov test coverage](https://codecov.io/gh/valenmonte/estacionespaquete/branch/master/graph/badge.svg)](https://app.codecov.io/gh/valenmonte/estacionespaquete?branch=master)

<!-- badges: end -->

------------------------------------------------------------------------

## 📦 Instalación

Este paquete se instala directamente desde GitHub:

```` r
# Instalar 'remotes' si no lo tenés
install.packages("remotes")

# Instalar el paquete
remotes::install_github("valenmonte/estacionespaquete")


# Paquete de Prueba — Estaciones Meteorológicas ![](man/figures/logo.png){align="right" width="120"}

Este paquete fue desarrollado como parte del **Ejercicio Transversal** y Su objetivo es **aprender a crear, estructurar y conectar un paquete de R con GitHub**, no generar una herramienta de uso real.

------------------------------------------------------------------------

## 🚧 Estado del proyecto

⚠️ **Este paquete es únicamente de prueba y práctica.**\
No está pensado para ser distribuido, instalado ni utilizado en proyectos reales.

------------------------------------------------------------------------

## 📚 Contenido:

El paquete incluye ejemplos de: - Lectura de datos meteorológicos (`.csv`) de distintas estaciones. - Limpieza, combinación y resumen de datos. - Cálculo de temperatura media, máxima, mínima y desvío estándar. - Ejemplo de unión con metadatos (`left_join()`). - Uso de funciones de `{usethis}` para crear y versionar un paquete en GitHub.

------------------------------------------------------------------------

## 👩‍💻 Autores:

Este paquete fue creado por Valentín Monteverde y Agustin Zarate,\
como ejercicio colaborativo para practicar el flujo de trabajo con Git y GitHub.

------------------------------------------------------------------------

## Ejemplos de uso:

``` r
library(estacionespaquete)
```
```r
# Ver estructura de los datos de ejemplo
dplyr::glimpse(datos_ejemplo)
```
```r
# Tabla resumen de temperatura para un subconjunto de estaciones
tabla_resumen_temperatura(
  datos_ejemplo,
  estaciones = c("NH0472", "NH0437")
)
```
```r
# Gráfico de temperatura media mensual
grafico_temperatura_mensual(datos_ejemplo)
```
````
