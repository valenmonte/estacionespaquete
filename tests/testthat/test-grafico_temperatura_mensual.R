test_that("grafico_temperatura_mensual devuelve un ggplot", {
  p <- grafico_temperatura_mensual(
    datos = datos_ejemplo,
    titulo = "Temperatura media mensual"
  )

  expect_s3_class(p, "ggplot")
})

test_that("grafico_temperatura_mensual funciona con subconjunto de estaciones", {
  estaciones <- c("NH0472", "NH0437")

  datos_sub <- subset(datos_ejemplo, id %in% estaciones)

  p <- grafico_temperatura_mensual(
    datos = datos_sub,
    titulo = "Temp mensual subset"
  )

  expect_s3_class(p, "ggplot")
  expect_true(all(estaciones %in% unique(datos_sub$id)))
})
