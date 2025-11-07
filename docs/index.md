# estacionespaquete

# Paquete de Prueba — Estaciones Meteorológicas

Este paquete fue desarrollado como parte del **Ejercicio Transversal** y Su objetivo es **aprender a crear, estructurar y conectar un paquete de R con GitHub**, no generar una herramienta de uso real.

------------------------------------------------------------------------

## 🚧 Estado del proyecto

⚠️ **Este paquete es únicamente de prueba y práctica.**\
No está pensado para ser distribuido, instalado ni utilizado en proyectos reales.

------------------------------------------------------------------------

## 📚 Contenido

El paquete incluye ejemplos de: - Lectura de datos meteorológicos (`.csv`) de distintas estaciones. - Limpieza, combinación y resumen de datos. - Cálculo de temperatura media, máxima, mínima y desvío estándar. - Ejemplo de unión con metadatos (`left_join()`). - Uso de funciones de [usethis](https://usethis.r-lib.org) para crear y versionar un paquete en GitHub.

------------------------------------------------------------------------

## 👩‍💻 Autores

Este paquete fue creado por Valentín Monteverde y Agustin Zarate,\
como ejercicio colaborativo para practicar el flujo de trabajo con Git y GitHub.

------------------------------------------------------------------------

## Ejemplos de uso

``` r
library(estacionespaquete)

# Ver estructura de los datos de ejemplo
dplyr::glimpse(datos_ejemplo)

# Tabla resumen de temperatura para un subconjunto de estaciones
tabla_resumen_temperatura(
  datos_ejemplo,
  estaciones = c("NH0472", "NH0437")
)

# Gráfico de temperatura media mensual
grafico_temperatura_mensual(datos_ejemplo)
```
