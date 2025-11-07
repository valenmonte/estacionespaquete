test_that("tabla_resumen_temperatura devuelve una tabla con columnas esperadas", {
  res <- tabla_resumen_temperatura(
    datos = datos_ejemplo,
    estaciones = c("NH0472", "NH0437")
  )

  expect_s3_class(res, "data.frame")
  expect_true(all(c("id", "promedio", "desviacion") %in% names(res)))
  expect_equal(sort(res$id), sort(c("NH0472", "NH0437")))
})

test_that("tabla_resumen_temperatura ignora NA correctamente", {
  datos_na <- datos_ejemplo

  datos_na$temperatura_abrigo_150cm[1:10] <- NA

  res <- tabla_resumen_temperatura(
    datos = datos_na,
    estaciones = c("NH0472")
  )

  esperado <- mean(
    datos_na$temperatura_abrigo_150cm[datos_na$id == "NH0472"],
    na.rm = TRUE
  )

  obtenido <- res$promedio[res$id == "NH0472"]

  expect_equal(obtenido, esperado)
})
