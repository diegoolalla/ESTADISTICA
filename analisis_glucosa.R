# ============================================================================
# ANÁLISIS ESTADÍSTICO: TOLERANCIA A LA GLUCOSA EN JÓVENES Y ADULTOS
# ============================================================================
# Estudio sobre tolerancia a la glucosa en jóvenes (<30) y adultos (>30)
# Nivel de significación: 5%
# ============================================================================

# Cargar datos
datos <- read.csv("datos_glucosa.csv", header = TRUE)

# Separar datos por grupo
jovenes <- datos[datos$grupo == "joven", ]
adultos <- datos[datos$grupo == "adulto", ]

cat("\n============================================================================\n")
cat("                ANÁLISIS ESTADÍSTICO DE TOLERANCIA A LA GLUCOSA\n")
cat("============================================================================\n\n")

# ============================================================================
# 1. MEDIDAS DE CENTRALIZACIÓN
# ============================================================================
cat("1. MEDIDAS DE CENTRALIZACIÓN\n")
cat("------------------------------------------------------------\n")

# Función para calcular moda
calcular_moda <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

# Jóvenes - Glucosa Basal
cat("\nJÓVENES - Glucosa Basal:\n")
cat(sprintf("  Media: %.2f mg/dL\n", mean(jovenes$glucosa_basal)))
cat(sprintf("  Mediana: %.2f mg/dL\n", median(jovenes$glucosa_basal)))
cat(sprintf("  Moda: %.2f mg/dL\n", calcular_moda(jovenes$glucosa_basal)))

# Jóvenes - Glucosa 60 min
cat("\nJÓVENES - Glucosa 60 min:\n")
cat(sprintf("  Media: %.2f mg/dL\n", mean(jovenes$glucosa_60min)))
cat(sprintf("  Mediana: %.2f mg/dL\n", median(jovenes$glucosa_60min)))
cat(sprintf("  Moda: %.2f mg/dL\n", calcular_moda(jovenes$glucosa_60min)))

# Adultos - Glucosa Basal
cat("\nADULTOS - Glucosa Basal:\n")
cat(sprintf("  Media: %.2f mg/dL\n", mean(adultos$glucosa_basal)))
cat(sprintf("  Mediana: %.2f mg/dL\n", median(adultos$glucosa_basal)))
cat(sprintf("  Moda: %.2f mg/dL\n", calcular_moda(adultos$glucosa_basal)))

# Adultos - Glucosa 60 min
cat("\nADULTOS - Glucosa 60 min:\n")
cat(sprintf("  Media: %.2f mg/dL\n", mean(adultos$glucosa_60min)))
cat(sprintf("  Mediana: %.2f mg/dL\n", median(adultos$glucosa_60min)))
cat(sprintf("  Moda: %.2f mg/dL\n", calcular_moda(adultos$glucosa_60min)))

# ============================================================================
# 2. MEDIDAS DE DISPERSIÓN
# ============================================================================
cat("\n\n2. MEDIDAS DE DISPERSIÓN\n")
cat("------------------------------------------------------------\n")

# Jóvenes - Glucosa Basal
cat("\nJÓVENES - Glucosa Basal:\n")
cat(sprintf("  Rango: %.2f mg/dL\n", diff(range(jovenes$glucosa_basal))))
cat(sprintf("  Varianza: %.2f (mg/dL)²\n", var(jovenes$glucosa_basal)))
cat(sprintf("  Desviación Estándar: %.2f mg/dL\n", sd(jovenes$glucosa_basal)))
cat(sprintf("  Coeficiente de Variación: %.2f%%\n", 
    (sd(jovenes$glucosa_basal) / mean(jovenes$glucosa_basal)) * 100))
cat(sprintf("  Rango Intercuartílico (IQR): %.2f mg/dL\n", IQR(jovenes$glucosa_basal)))

# Jóvenes - Glucosa 60 min
cat("\nJÓVENES - Glucosa 60 min:\n")
cat(sprintf("  Rango: %.2f mg/dL\n", diff(range(jovenes$glucosa_60min))))
cat(sprintf("  Varianza: %.2f (mg/dL)²\n", var(jovenes$glucosa_60min)))
cat(sprintf("  Desviación Estándar: %.2f mg/dL\n", sd(jovenes$glucosa_60min)))
cat(sprintf("  Coeficiente de Variación: %.2f%%\n", 
    (sd(jovenes$glucosa_60min) / mean(jovenes$glucosa_60min)) * 100))
cat(sprintf("  Rango Intercuartílico (IQR): %.2f mg/dL\n", IQR(jovenes$glucosa_60min)))

# Adultos - Glucosa Basal
cat("\nADULTOS - Glucosa Basal:\n")
cat(sprintf("  Rango: %.2f mg/dL\n", diff(range(adultos$glucosa_basal))))
cat(sprintf("  Varianza: %.2f (mg/dL)²\n", var(adultos$glucosa_basal)))
cat(sprintf("  Desviación Estándar: %.2f mg/dL\n", sd(adultos$glucosa_basal)))
cat(sprintf("  Coeficiente de Variación: %.2f%%\n", 
    (sd(adultos$glucosa_basal) / mean(adultos$glucosa_basal)) * 100))
cat(sprintf("  Rango Intercuartílico (IQR): %.2f mg/dL\n", IQR(adultos$glucosa_basal)))

# Adultos - Glucosa 60 min
cat("\nADULTOS - Glucosa 60 min:\n")
cat(sprintf("  Rango: %.2f mg/dL\n", diff(range(adultos$glucosa_60min))))
cat(sprintf("  Varianza: %.2f (mg/dL)²\n", var(adultos$glucosa_60min)))
cat(sprintf("  Desviación Estándar: %.2f mg/dL\n", sd(adultos$glucosa_60min)))
cat(sprintf("  Coeficiente de Variación: %.2f%%\n", 
    (sd(adultos$glucosa_60min) / mean(adultos$glucosa_60min)) * 100))
cat(sprintf("  Rango Intercuartílico (IQR): %.2f mg/dL\n", IQR(adultos$glucosa_60min)))

# ============================================================================
# 3. MEDIDAS DE SIMETRÍA (SKEWNESS) - Implementación básica
# ============================================================================
cat("\n\n3. MEDIDAS DE SIMETRÍA (COEFICIENTE DE ASIMETRÍA)\n")
cat("------------------------------------------------------------\n")
cat("Interpretación: 0 = simétrica, >0 = asimetría positiva, <0 = asimetría negativa\n\n")

# Función para calcular skewness
calcular_skewness <- function(x) {
  n <- length(x)
  m <- mean(x)
  s <- sd(x)
  sum((x - m)^3) / (n * s^3)
}

cat("JÓVENES:\n")
cat(sprintf("  Glucosa Basal: %.4f\n", calcular_skewness(jovenes$glucosa_basal)))
cat(sprintf("  Glucosa 60 min: %.4f\n", calcular_skewness(jovenes$glucosa_60min)))

cat("\nADULTOS:\n")
cat(sprintf("  Glucosa Basal: %.4f\n", calcular_skewness(adultos$glucosa_basal)))
cat(sprintf("  Glucosa 60 min: %.4f\n", calcular_skewness(adultos$glucosa_60min)))

# ============================================================================
# 4. CURTOSIS - Implementación básica
# ============================================================================
cat("\n\n4. CURTOSIS (EXCESO DE CURTOSIS)\n")
cat("------------------------------------------------------------\n")
cat("Interpretación: 0 = mesocúrtica, >0 = leptocúrtica, <0 = platicúrtica\n\n")

# Función para calcular kurtosis
calcular_kurtosis <- function(x) {
  n <- length(x)
  m <- mean(x)
  s <- sd(x)
  (sum((x - m)^4) / (n * s^4)) - 3
}

cat("JÓVENES:\n")
cat(sprintf("  Glucosa Basal: %.4f\n", calcular_kurtosis(jovenes$glucosa_basal)))
cat(sprintf("  Glucosa 60 min: %.4f\n", calcular_kurtosis(jovenes$glucosa_60min)))

cat("\nADULTOS:\n")
cat(sprintf("  Glucosa Basal: %.4f\n", calcular_kurtosis(adultos$glucosa_basal)))
cat(sprintf("  Glucosa 60 min: %.4f\n", calcular_kurtosis(adultos$glucosa_60min)))

# ============================================================================
# 5. CUARTILES
# ============================================================================
cat("\n\n5. CUARTILES\n")
cat("------------------------------------------------------------\n")

cat("\nJÓVENES - Glucosa Basal:\n")
cuartiles_jov_basal <- quantile(jovenes$glucosa_basal, probs = c(0.25, 0.5, 0.75))
cat(sprintf("  Q1 (25%%): %.2f mg/dL\n", cuartiles_jov_basal[1]))
cat(sprintf("  Q2 (50%%): %.2f mg/dL\n", cuartiles_jov_basal[2]))
cat(sprintf("  Q3 (75%%): %.2f mg/dL\n", cuartiles_jov_basal[3]))

cat("\nJÓVENES - Glucosa 60 min:\n")
cuartiles_jov_60 <- quantile(jovenes$glucosa_60min, probs = c(0.25, 0.5, 0.75))
cat(sprintf("  Q1 (25%%): %.2f mg/dL\n", cuartiles_jov_60[1]))
cat(sprintf("  Q2 (50%%): %.2f mg/dL\n", cuartiles_jov_60[2]))
cat(sprintf("  Q3 (75%%): %.2f mg/dL\n", cuartiles_jov_60[3]))

cat("\nADULTOS - Glucosa Basal:\n")
cuartiles_adul_basal <- quantile(adultos$glucosa_basal, probs = c(0.25, 0.5, 0.75))
cat(sprintf("  Q1 (25%%): %.2f mg/dL\n", cuartiles_adul_basal[1]))
cat(sprintf("  Q2 (50%%): %.2f mg/dL\n", cuartiles_adul_basal[2]))
cat(sprintf("  Q3 (75%%): %.2f mg/dL\n", cuartiles_adul_basal[3]))

cat("\nADULTOS - Glucosa 60 min:\n")
cuartiles_adul_60 <- quantile(adultos$glucosa_60min, probs = c(0.25, 0.5, 0.75))
cat(sprintf("  Q1 (25%%): %.2f mg/dL\n", cuartiles_adul_60[1]))
cat(sprintf("  Q2 (50%%): %.2f mg/dL\n", cuartiles_adul_60[2]))
cat(sprintf("  Q3 (75%%): %.2f mg/dL\n", cuartiles_adul_60[3]))

# ============================================================================
# 6. IDENTIFICACIÓN DE OUTLIERS Y BOX-PLOTS
# ============================================================================
cat("\n\n6. IDENTIFICACIÓN DE OUTLIERS\n")
cat("------------------------------------------------------------\n")
cat("Método: Rango Intercuartílico (IQR)\n")
cat("Outliers: valores < Q1 - 1.5*IQR o > Q3 + 1.5*IQR\n\n")

# Función para identificar outliers
identificar_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  limite_inferior <- Q1 - 1.5 * IQR_val
  limite_superior <- Q3 + 1.5 * IQR_val
  outliers <- x[x < limite_inferior | x > limite_superior]
  return(list(outliers = outliers, n_outliers = length(outliers)))
}

cat("JÓVENES - Glucosa Basal:\n")
outliers_jov_basal <- identificar_outliers(jovenes$glucosa_basal)
cat(sprintf("  Número de outliers: %d\n", outliers_jov_basal$n_outliers))
if (outliers_jov_basal$n_outliers > 0) {
  cat(sprintf("  Valores: %s\n", paste(outliers_jov_basal$outliers, collapse = ", ")))
}

cat("\nJÓVENES - Glucosa 60 min:\n")
outliers_jov_60 <- identificar_outliers(jovenes$glucosa_60min)
cat(sprintf("  Número de outliers: %d\n", outliers_jov_60$n_outliers))
if (outliers_jov_60$n_outliers > 0) {
  cat(sprintf("  Valores: %s\n", paste(outliers_jov_60$outliers, collapse = ", ")))
}

cat("\nADULTOS - Glucosa Basal:\n")
outliers_adul_basal <- identificar_outliers(adultos$glucosa_basal)
cat(sprintf("  Número de outliers: %d\n", outliers_adul_basal$n_outliers))
if (outliers_adul_basal$n_outliers > 0) {
  cat(sprintf("  Valores: %s\n", paste(outliers_adul_basal$outliers, collapse = ", ")))
}

cat("\nADULTOS - Glucosa 60 min:\n")
outliers_adul_60 <- identificar_outliers(adultos$glucosa_60min)
cat(sprintf("  Número de outliers: %d\n", outliers_adul_60$n_outliers))
if (outliers_adul_60$n_outliers > 0) {
  cat(sprintf("  Valores: %s\n", paste(outliers_adul_60$outliers, collapse = ", ")))
}

# Crear Box-plots
cat("\nGenerando gráficos box-plot...\n")

png("boxplot_glucosa_basal.png", width = 800, height = 600)
boxplot(glucosa_basal ~ grupo, data = datos,
        main = "Box-plot: Niveles de Glucosa Basal por Grupo",
        xlab = "Grupo", ylab = "Glucosa Basal (mg/dL)",
        col = c("lightblue", "lightcoral"),
        names = c("Adultos", "Jóvenes"))
dev.off()

png("boxplot_glucosa_60min.png", width = 800, height = 600)
boxplot(glucosa_60min ~ grupo, data = datos,
        main = "Box-plot: Niveles de Glucosa a 60 min por Grupo",
        xlab = "Grupo", ylab = "Glucosa 60 min (mg/dL)",
        col = c("lightblue", "lightcoral"),
        names = c("Adultos", "Jóvenes"))
dev.off()

# ============================================================================
# 7. PRUEBAS DE NORMALIDAD
# ============================================================================
cat("\n\n7. PRUEBAS DE NORMALIDAD\n")
cat("------------------------------------------------------------\n")
cat("Nivel de significación: α = 0.05\n")
cat("H0: Los datos siguen una distribución normal\n")
cat("H1: Los datos NO siguen una distribución normal\n")
cat("Decisión: Si p-valor < 0.05, rechazamos H0\n\n")

# Shapiro-Wilk test
cat("Test de Shapiro-Wilk:\n\n")

cat("JÓVENES - Glucosa Basal:\n")
sw_jov_basal <- shapiro.test(jovenes$glucosa_basal)
cat(sprintf("  W = %.4f, p-valor = %.4f\n", sw_jov_basal$statistic, sw_jov_basal$p.value))
cat(sprintf("  Conclusión: %s\n", 
    ifelse(sw_jov_basal$p.value < 0.05, 
           "Se rechaza H0. Los datos NO son normales.", 
           "No se rechaza H0. Los datos son normales.")))

cat("\nJÓVENES - Glucosa 60 min:\n")
sw_jov_60 <- shapiro.test(jovenes$glucosa_60min)
cat(sprintf("  W = %.4f, p-valor = %.4f\n", sw_jov_60$statistic, sw_jov_60$p.value))
cat(sprintf("  Conclusión: %s\n", 
    ifelse(sw_jov_60$p.value < 0.05, 
           "Se rechaza H0. Los datos NO son normales.", 
           "No se rechaza H0. Los datos son normales.")))

cat("\nADULTOS - Glucosa Basal:\n")
sw_adul_basal <- shapiro.test(adultos$glucosa_basal)
cat(sprintf("  W = %.4f, p-valor = %.4f\n", sw_adul_basal$statistic, sw_adul_basal$p.value))
cat(sprintf("  Conclusión: %s\n", 
    ifelse(sw_adul_basal$p.value < 0.05, 
           "Se rechaza H0. Los datos NO son normales.", 
           "No se rechaza H0. Los datos son normales.")))

cat("\nADULTOS - Glucosa 60 min:\n")
sw_adul_60 <- shapiro.test(adultos$glucosa_60min)
cat(sprintf("  W = %.4f, p-valor = %.4f\n", sw_adul_60$statistic, sw_adul_60$p.value))
cat(sprintf("  Conclusión: %s\n", 
    ifelse(sw_adul_60$p.value < 0.05, 
           "Se rechaza H0. Los datos NO son normales.", 
           "No se rechaza H0. Los datos son normales.")))

# Generar histogramas con curva normal
png("histograma_jovenes_basal.png", width = 800, height = 600)
hist(jovenes$glucosa_basal, breaks = 10, freq = FALSE,
     main = "Histograma: Glucosa Basal en Jóvenes",
     xlab = "Glucosa Basal (mg/dL)", ylab = "Densidad",
     col = "lightblue", border = "black")
curve(dnorm(x, mean = mean(jovenes$glucosa_basal), sd = sd(jovenes$glucosa_basal)),
      add = TRUE, col = "red", lwd = 2)
legend("topright", legend = c("Datos", "Curva Normal"), 
       fill = c("lightblue", NA), border = c("black", NA),
       col = c(NA, "red"), lty = c(NA, 1), lwd = c(NA, 2))
dev.off()

png("histograma_jovenes_60min.png", width = 800, height = 600)
hist(jovenes$glucosa_60min, breaks = 10, freq = FALSE,
     main = "Histograma: Glucosa 60 min en Jóvenes",
     xlab = "Glucosa 60 min (mg/dL)", ylab = "Densidad",
     col = "lightgreen", border = "black")
curve(dnorm(x, mean = mean(jovenes$glucosa_60min), sd = sd(jovenes$glucosa_60min)),
      add = TRUE, col = "red", lwd = 2)
legend("topright", legend = c("Datos", "Curva Normal"), 
       fill = c("lightgreen", NA), border = c("black", NA),
       col = c(NA, "red"), lty = c(NA, 1), lwd = c(NA, 2))
dev.off()

# ============================================================================
# 8. RELACIÓN LINEAL: GLUCOSA BASAL vs GLUCOSA 60 MIN (JÓVENES)
# ============================================================================
cat("\n\n8. RELACIÓN LINEAL: Glucosa Basal vs Glucosa 60 min (JÓVENES)\n")
cat("------------------------------------------------------------\n")

# Coeficiente de correlación
correlacion_jovenes <- cor(jovenes$glucosa_basal, jovenes$glucosa_60min)
cat(sprintf("Coeficiente de Correlación de Pearson: r = %.4f\n", correlacion_jovenes))

# Test de correlación
cor_test_jovenes <- cor.test(jovenes$glucosa_basal, jovenes$glucosa_60min)
cat(sprintf("p-valor: %.4f\n", cor_test_jovenes$p.value))
cat(sprintf("Conclusión: %s\n", 
    ifelse(cor_test_jovenes$p.value < 0.05, 
           "La correlación es estadísticamente significativa.", 
           "La correlación NO es estadísticamente significativa.")))

# Interpretación de la correlación
if (abs(correlacion_jovenes) < 0.3) {
  interpretacion <- "débil"
} else if (abs(correlacion_jovenes) < 0.7) {
  interpretacion <- "moderada"
} else {
  interpretacion <- "fuerte"
}
cat(sprintf("Interpretación: Correlación %s\n", interpretacion))

# Modelo de regresión lineal
cat("\n8.1. MODELO DE REGRESIÓN LINEAL:\n")
cat("Modelo: Glucosa_60min = β0 + β1 * Glucosa_Basal + ε\n\n")

modelo_jovenes <- lm(glucosa_60min ~ glucosa_basal, data = jovenes)
coef_modelo <- coef(modelo_jovenes)
resumen_modelo <- summary(modelo_jovenes)

cat(sprintf("Ecuación estimada: Glucosa_60min = %.4f + %.4f * Glucosa_Basal\n", 
    coef_modelo[1], coef_modelo[2]))
cat(sprintf("\nCoeficiente β0 (Intercepto): %.4f\n", coef_modelo[1]))
cat(sprintf("  Error estándar: %.4f\n", resumen_modelo$coefficients[1, 2]))
cat(sprintf("  t-valor: %.4f\n", resumen_modelo$coefficients[1, 3]))
cat(sprintf("  p-valor: %.4f\n", resumen_modelo$coefficients[1, 4]))

cat(sprintf("\nCoeficiente β1 (Pendiente): %.4f\n", coef_modelo[2]))
cat(sprintf("  Error estándar: %.4f\n", resumen_modelo$coefficients[2, 2]))
cat(sprintf("  t-valor: %.4f\n", resumen_modelo$coefficients[2, 3]))
cat(sprintf("  p-valor: %.4f\n", resumen_modelo$coefficients[2, 4]))

cat(sprintf("\nR² (Coeficiente de determinación): %.4f\n", resumen_modelo$r.squared))
cat(sprintf("R² ajustado: %.4f\n", resumen_modelo$adj.r.squared))
cat(sprintf("Interpretación: El modelo explica el %.2f%% de la variabilidad\n", 
    resumen_modelo$r.squared * 100))

cat(sprintf("\nError estándar residual: %.4f con %d grados de libertad\n", 
    resumen_modelo$sigma, resumen_modelo$df[2]))

# ANOVA del modelo
cat("\nANOVA del modelo:\n")
anova_modelo <- anova(modelo_jovenes)
print(anova_modelo)

# Intervalos de confianza para los coeficientes
cat("\nIntervalos de Confianza (95%) para los coeficientes:\n")
ic_coef <- confint(modelo_jovenes, level = 0.95)
print(ic_coef)

# Estimaciones con el modelo
cat("\n8.2. ESTIMACIONES CON EL MODELO:\n\n")

# Ejemplos de estimación
valores_basal_ejemplo <- c(80, 85, 90, 95)
cat("Ejemplos de predicción:\n")
for (val in valores_basal_ejemplo) {
  prediccion <- predict(modelo_jovenes, newdata = data.frame(glucosa_basal = val),
                       interval = "prediction", level = 0.95)
  cat(sprintf("  Si Glucosa Basal = %.0f mg/dL:\n", val))
  cat(sprintf("    Predicción: %.2f mg/dL\n", prediccion[1]))
  cat(sprintf("    IC 95%%: [%.2f, %.2f] mg/dL\n", prediccion[2], prediccion[3]))
}

# Crear gráfico de dispersión con línea de regresión
png("scatter_regresion_jovenes.png", width = 800, height = 600)
plot(jovenes$glucosa_basal, jovenes$glucosa_60min,
     main = "Relación Lineal: Glucosa Basal vs 60 min (Jóvenes)",
     xlab = "Glucosa Basal (mg/dL)",
     ylab = "Glucosa 60 min (mg/dL)",
     pch = 19, col = "blue")
abline(modelo_jovenes, col = "red", lwd = 2)
legend("topleft", 
       legend = c(sprintf("r = %.4f", correlacion_jovenes),
                 sprintf("R² = %.4f", resumen_modelo$r.squared)),
       bty = "n")
dev.off()

# Gráficos de diagnóstico del modelo
png("diagnostico_modelo_jovenes.png", width = 1200, height = 900)
par(mfrow = c(2, 2))
plot(modelo_jovenes)
par(mfrow = c(1, 1))
dev.off()

# ============================================================================
# 9. INTERVALOS DE CONFIANZA PARA MEDIAS
# ============================================================================
cat("\n\n9. INTERVALOS DE CONFIANZA PARA MEDIAS (95%)\n")
cat("------------------------------------------------------------\n")

# Función para calcular IC
calcular_ic_media <- function(x, nivel = 0.95) {
  n <- length(x)
  media <- mean(x)
  ee <- sd(x) / sqrt(n)
  t_crit <- qt((1 + nivel) / 2, df = n - 1)
  ic_inf <- media - t_crit * ee
  ic_sup <- media + t_crit * ee
  return(list(media = media, ic_inf = ic_inf, ic_sup = ic_sup, ee = ee))
}

cat("\nJÓVENES - Glucosa Basal:\n")
ic_jov_basal <- calcular_ic_media(jovenes$glucosa_basal)
cat(sprintf("  Media: %.2f mg/dL\n", ic_jov_basal$media))
cat(sprintf("  Error Estándar: %.2f\n", ic_jov_basal$ee))
cat(sprintf("  IC 95%%: [%.2f, %.2f] mg/dL\n", ic_jov_basal$ic_inf, ic_jov_basal$ic_sup))

cat("\nJÓVENES - Glucosa 60 min:\n")
ic_jov_60 <- calcular_ic_media(jovenes$glucosa_60min)
cat(sprintf("  Media: %.2f mg/dL\n", ic_jov_60$media))
cat(sprintf("  Error Estándar: %.2f\n", ic_jov_60$ee))
cat(sprintf("  IC 95%%: [%.2f, %.2f] mg/dL\n", ic_jov_60$ic_inf, ic_jov_60$ic_sup))

cat("\nADULTOS - Glucosa Basal:\n")
ic_adul_basal <- calcular_ic_media(adultos$glucosa_basal)
cat(sprintf("  Media: %.2f mg/dL\n", ic_adul_basal$media))
cat(sprintf("  Error Estándar: %.2f\n", ic_adul_basal$ee))
cat(sprintf("  IC 95%%: [%.2f, %.2f] mg/dL\n", ic_adul_basal$ic_inf, ic_adul_basal$ic_sup))

cat("\nADULTOS - Glucosa 60 min:\n")
ic_adul_60 <- calcular_ic_media(adultos$glucosa_60min)
cat(sprintf("  Media: %.2f mg/dL\n", ic_adul_60$media))
cat(sprintf("  Error Estándar: %.2f\n", ic_adul_60$ee))
cat(sprintf("  IC 95%%: [%.2f, %.2f] mg/dL\n", ic_adul_60$ic_inf, ic_adul_60$ic_sup))

# ============================================================================
# 10. INTERVALOS DE CONFIANZA PARA PROPORCIONES
# ============================================================================
cat("\n\n10. INTERVALOS DE CONFIANZA PARA PROPORCIONES (95%)\n")
cat("------------------------------------------------------------\n")

# Proporción de jóvenes con glucosa basal > 85
prop_jov_basal_alta <- sum(jovenes$glucosa_basal > 85) / nrow(jovenes)
n_jov <- nrow(jovenes)
ee_prop_jov <- sqrt(prop_jov_basal_alta * (1 - prop_jov_basal_alta) / n_jov)
z_crit <- qnorm(0.975)
ic_prop_jov_inf <- prop_jov_basal_alta - z_crit * ee_prop_jov
ic_prop_jov_sup <- prop_jov_basal_alta + z_crit * ee_prop_jov

cat("\nProporción de JÓVENES con Glucosa Basal > 85 mg/dL:\n")
cat(sprintf("  Proporción: %.4f (%.2f%%)\n", prop_jov_basal_alta, prop_jov_basal_alta * 100))
cat(sprintf("  IC 95%%: [%.4f, %.4f] ([%.2f%%, %.2f%%])\n", 
    ic_prop_jov_inf, ic_prop_jov_sup, 
    ic_prop_jov_inf * 100, ic_prop_jov_sup * 100))

# Proporción de adultos con glucosa basal > 95
prop_adul_basal_alta <- sum(adultos$glucosa_basal > 95) / nrow(adultos)
n_adul <- nrow(adultos)
ee_prop_adul <- sqrt(prop_adul_basal_alta * (1 - prop_adul_basal_alta) / n_adul)
ic_prop_adul_inf <- prop_adul_basal_alta - z_crit * ee_prop_adul
ic_prop_adul_sup <- prop_adul_basal_alta + z_crit * ee_prop_adul

cat("\nProporción de ADULTOS con Glucosa Basal > 95 mg/dL:\n")
cat(sprintf("  Proporción: %.4f (%.2f%%)\n", prop_adul_basal_alta, prop_adul_basal_alta * 100))
cat(sprintf("  IC 95%%: [%.4f, %.4f] ([%.2f%%, %.2f%%])\n", 
    ic_prop_adul_inf, ic_prop_adul_sup, 
    ic_prop_adul_inf * 100, ic_prop_adul_sup * 100))

# Proporción de jóvenes con glucosa 60 min > 115
prop_jov_60_alta <- sum(jovenes$glucosa_60min > 115) / nrow(jovenes)
ee_prop_jov_60 <- sqrt(prop_jov_60_alta * (1 - prop_jov_60_alta) / n_jov)
ic_prop_jov_60_inf <- prop_jov_60_alta - z_crit * ee_prop_jov_60
ic_prop_jov_60_sup <- prop_jov_60_alta + z_crit * ee_prop_jov_60

cat("\nProporción de JÓVENES con Glucosa 60 min > 115 mg/dL:\n")
cat(sprintf("  Proporción: %.4f (%.2f%%)\n", prop_jov_60_alta, prop_jov_60_alta * 100))
cat(sprintf("  IC 95%%: [%.4f, %.4f] ([%.2f%%, %.2f%%])\n", 
    ic_prop_jov_60_inf, ic_prop_jov_60_sup, 
    ic_prop_jov_60_inf * 100, ic_prop_jov_60_sup * 100))

# ============================================================================
# 11. CONTRASTES DE HIPÓTESIS
# ============================================================================
cat("\n\n11. CONTRASTES DE HIPÓTESIS (α = 0.05)\n")
cat("------------------------------------------------------------\n")

# 11.1. Comparación de medias entre jóvenes y adultos (glucosa basal)
cat("\n11.1. Comparación de medias: Glucosa Basal entre Jóvenes y Adultos\n")
cat("H0: μ_jóvenes = μ_adultos\n")
cat("H1: μ_jóvenes ≠ μ_adultos\n\n")

# Primero, test de igualdad de varianzas
var_test_basal <- var.test(jovenes$glucosa_basal, adultos$glucosa_basal)
cat(sprintf("Test de igualdad de varianzas (F-test): p-valor = %.4f\n", 
    var_test_basal$p.value))

# t-test (dos muestras)
t_test_basal <- t.test(jovenes$glucosa_basal, adultos$glucosa_basal, 
                       var.equal = (var_test_basal$p.value > 0.05))
cat(sprintf("\nTest t de Student:\n"))
cat(sprintf("  t = %.4f, gl = %.2f, p-valor = %.4f\n", 
    t_test_basal$statistic, t_test_basal$parameter, t_test_basal$p.value))
cat(sprintf("  Media Jóvenes: %.2f mg/dL\n", t_test_basal$estimate[1]))
cat(sprintf("  Media Adultos: %.2f mg/dL\n", t_test_basal$estimate[2]))
cat(sprintf("  Diferencia de medias: %.2f mg/dL\n", 
    t_test_basal$estimate[1] - t_test_basal$estimate[2]))
cat(sprintf("  IC 95%% para la diferencia: [%.2f, %.2f]\n", 
    t_test_basal$conf.int[1], t_test_basal$conf.int[2]))
cat(sprintf("\nConclusión: %s\n", 
    ifelse(t_test_basal$p.value < 0.05, 
           "Se rechaza H0. Hay diferencia significativa entre las medias.", 
           "No se rechaza H0. No hay diferencia significativa.")))

# 11.2. Comparación de medias entre jóvenes y adultos (glucosa 60 min)
cat("\n\n11.2. Comparación de medias: Glucosa 60 min entre Jóvenes y Adultos\n")
cat("H0: μ_jóvenes = μ_adultos\n")
cat("H1: μ_jóvenes ≠ μ_adultos\n\n")

var_test_60 <- var.test(jovenes$glucosa_60min, adultos$glucosa_60min)
cat(sprintf("Test de igualdad de varianzas (F-test): p-valor = %.4f\n", 
    var_test_60$p.value))

t_test_60 <- t.test(jovenes$glucosa_60min, adultos$glucosa_60min,
                    var.equal = (var_test_60$p.value > 0.05))
cat(sprintf("\nTest t de Student:\n"))
cat(sprintf("  t = %.4f, gl = %.2f, p-valor = %.4f\n", 
    t_test_60$statistic, t_test_60$parameter, t_test_60$p.value))
cat(sprintf("  Media Jóvenes: %.2f mg/dL\n", t_test_60$estimate[1]))
cat(sprintf("  Media Adultos: %.2f mg/dL\n", t_test_60$estimate[2]))
cat(sprintf("  Diferencia de medias: %.2f mg/dL\n", 
    t_test_60$estimate[1] - t_test_60$estimate[2]))
cat(sprintf("  IC 95%% para la diferencia: [%.2f, %.2f]\n", 
    t_test_60$conf.int[1], t_test_60$conf.int[2]))
cat(sprintf("\nConclusión: %s\n", 
    ifelse(t_test_60$p.value < 0.05, 
           "Se rechaza H0. Hay diferencia significativa entre las medias.", 
           "No se rechaza H0. No hay diferencia significativa.")))

# 11.3. Test sobre una media específica (ejemplo: jóvenes basal vs 87)
cat("\n\n11.3. Test de media: Glucosa Basal en Jóvenes vs valor de referencia 87 mg/dL\n")
cat("H0: μ = 87\n")
cat("H1: μ ≠ 87\n\n")

t_test_media <- t.test(jovenes$glucosa_basal, mu = 87)
cat(sprintf("Test t de Student:\n"))
cat(sprintf("  t = %.4f, gl = %d, p-valor = %.4f\n", 
    t_test_media$statistic, t_test_media$parameter, t_test_media$p.value))
cat(sprintf("  Media muestral: %.2f mg/dL\n", t_test_media$estimate))
cat(sprintf("  IC 95%%: [%.2f, %.2f]\n", 
    t_test_media$conf.int[1], t_test_media$conf.int[2]))
cat(sprintf("\nConclusión: %s\n", 
    ifelse(t_test_media$p.value < 0.05, 
           "Se rechaza H0. La media es significativamente diferente de 87.", 
           "No se rechaza H0. No hay evidencia de diferencia con 87.")))

# ============================================================================
# 12. ANÁLISIS DE DATOS EMPAREJADOS (ADULTOS)
# ============================================================================
cat("\n\n12. ANÁLISIS DE DATOS EMPAREJADOS: ADULTOS (α = 0.05)\n")
cat("------------------------------------------------------------\n")
cat("Comparación: Glucosa Basal vs Glucosa 60 min en ADULTOS\n")
cat("(Antes y después de la ingestión de glucosa)\n\n")

# Diferencias emparejadas
diferencias_adultos <- adultos$glucosa_60min - adultos$glucosa_basal

cat("12.1. ESTADÍSTICAS DESCRIPTIVAS DE LAS DIFERENCIAS:\n\n")
cat(sprintf("Media de las diferencias: %.2f mg/dL\n", mean(diferencias_adultos)))
cat(sprintf("Mediana de las diferencias: %.2f mg/dL\n", median(diferencias_adultos)))
cat(sprintf("Desviación estándar: %.2f mg/dL\n", sd(diferencias_adultos)))
cat(sprintf("Rango: [%.2f, %.2f] mg/dL\n", 
    min(diferencias_adultos), max(diferencias_adultos)))

# Test de normalidad para las diferencias
cat("\n12.2. TEST DE NORMALIDAD DE LAS DIFERENCIAS:\n\n")
sw_diff <- shapiro.test(diferencias_adultos)
cat(sprintf("Shapiro-Wilk: W = %.4f, p-valor = %.4f\n", 
    sw_diff$statistic, sw_diff$p.value))
cat(sprintf("Conclusión: %s\n", 
    ifelse(sw_diff$p.value < 0.05, 
           "Las diferencias NO siguen distribución normal.", 
           "Las diferencias siguen distribución normal.")))

# Test t pareado
cat("\n12.3. TEST T PAREADO:\n")
cat("H0: μ_diferencia = 0 (no hay cambio tras la ingestión de glucosa)\n")
cat("H1: μ_diferencia ≠ 0 (hay cambio tras la ingestión de glucosa)\n\n")

t_test_pareado <- t.test(adultos$glucosa_60min, adultos$glucosa_basal, 
                         paired = TRUE)
cat(sprintf("  t = %.4f, gl = %d, p-valor < %.6f\n", 
    t_test_pareado$statistic, t_test_pareado$parameter, t_test_pareado$p.value))
cat(sprintf("  Media de las diferencias: %.2f mg/dL\n", t_test_pareado$estimate))
cat(sprintf("  IC 95%% para la diferencia media: [%.2f, %.2f]\n", 
    t_test_pareado$conf.int[1], t_test_pareado$conf.int[2]))

cat(sprintf("\nConclusión: %s\n", 
    ifelse(t_test_pareado$p.value < 0.05, 
           "Se rechaza H0. Hay una diferencia significativa entre los niveles\n            de glucosa basal y a los 60 min tras la ingestión.", 
           "No se rechaza H0. No hay diferencia significativa.")))

# Tamaño del efecto (d de Cohen)
d_cohen <- mean(diferencias_adultos) / sd(diferencias_adultos)
cat(sprintf("\nTamaño del efecto (d de Cohen): %.4f\n", d_cohen))
if (abs(d_cohen) < 0.2) {
  cat("Interpretación: Efecto pequeño\n")
} else if (abs(d_cohen) < 0.8) {
  cat("Interpretación: Efecto mediano\n")
} else {
  cat("Interpretación: Efecto grande\n")
}

# Intervalos de confianza para la diferencia media
cat("\n12.4. INTERVALO DE CONFIANZA (95%) PARA LA DIFERENCIA MEDIA:\n")
cat(sprintf("  [%.2f, %.2f] mg/dL\n", 
    t_test_pareado$conf.int[1], t_test_pareado$conf.int[2]))

# Gráfico de las diferencias
png("diferencias_adultos.png", width = 800, height = 600)
hist(diferencias_adultos, breaks = 10,
     main = "Distribución de Diferencias\n(Glucosa 60 min - Glucosa Basal) en Adultos",
     xlab = "Diferencia (mg/dL)",
     ylab = "Frecuencia",
     col = "lightcoral",
     border = "black")
abline(v = mean(diferencias_adultos), col = "blue", lwd = 2, lty = 2)
legend("topright", 
       legend = sprintf("Media = %.2f mg/dL", mean(diferencias_adultos)),
       col = "blue", lty = 2, lwd = 2)
dev.off()

# Gráfico antes-después
png("antes_despues_adultos.png", width = 800, height = 600)
plot(adultos$glucosa_basal, adultos$glucosa_60min,
     main = "Comparación: Glucosa Basal vs 60 min en Adultos",
     xlab = "Glucosa Basal (mg/dL)",
     ylab = "Glucosa 60 min (mg/dL)",
     pch = 19, col = "red")
abline(a = 0, b = 1, col = "gray", lty = 2, lwd = 2)
segments(adultos$glucosa_basal, adultos$glucosa_basal,
         adultos$glucosa_basal, adultos$glucosa_60min,
         col = "blue", lty = 1)
legend("topleft", 
       legend = c("Datos observados", "Línea de igualdad", "Cambios"),
       col = c("red", "gray", "blue"),
       pch = c(19, NA, NA),
       lty = c(NA, 2, 1))
dev.off()

# ============================================================================
# RESUMEN FINAL
# ============================================================================
cat("\n\n============================================================================\n")
cat("                            RESUMEN FINAL\n")
cat("============================================================================\n\n")

cat("ARCHIVOS GENERADOS:\n")
cat("  - boxplot_glucosa_basal.png\n")
cat("  - boxplot_glucosa_60min.png\n")
cat("  - histograma_jovenes_basal.png\n")
cat("  - histograma_jovenes_60min.png\n")
cat("  - scatter_regresion_jovenes.png\n")
cat("  - diagnostico_modelo_jovenes.png\n")
cat("  - diferencias_adultos.png\n")
cat("  - antes_despues_adultos.png\n\n")

cat("PRINCIPALES CONCLUSIONES:\n\n")

cat("1. CENTRALIZACIÓN Y DISPERSIÓN:\n")
cat(sprintf("   - Jóvenes tienen menores niveles de glucosa (basal: %.2f mg/dL)\n", 
    mean(jovenes$glucosa_basal)))
cat(sprintf("   - Adultos tienen mayores niveles de glucosa (basal: %.2f mg/dL)\n", 
    mean(adultos$glucosa_basal)))

cat("\n2. NORMALIDAD:\n")
cat("   - Ver resultados de tests de Shapiro-Wilk\n")

cat("\n3. RELACIÓN LINEAL (JÓVENES):\n")
cat(sprintf("   - Correlación: r = %.4f\n", correlacion_jovenes))
cat(sprintf("   - Modelo: Glucosa_60min = %.2f + %.2f * Glucosa_Basal\n", 
    coef_modelo[1], coef_modelo[2]))
cat(sprintf("   - R² = %.4f (%.2f%% de variabilidad explicada)\n", 
    resumen_modelo$r.squared, resumen_modelo$r.squared * 100))

cat("\n4. COMPARACIÓN ENTRE GRUPOS:\n")
cat(sprintf("   - Diferencia en glucosa basal: %.2f mg/dL (p-valor = %.4f)\n", 
    mean(adultos$glucosa_basal) - mean(jovenes$glucosa_basal), 
    t_test_basal$p.value))
cat(sprintf("   - Diferencia en glucosa 60 min: %.2f mg/dL (p-valor < %.6f)\n", 
    mean(adultos$glucosa_60min) - mean(jovenes$glucosa_60min), 
    t_test_60$p.value))

cat("\n5. DATOS EMPAREJADOS (ADULTOS):\n")
cat(sprintf("   - Incremento medio tras ingestión: %.2f mg/dL\n", 
    mean(diferencias_adultos)))
cat(sprintf("   - p-valor < %.6f (altamente significativo)\n", 
    t_test_pareado$p.value))
cat(sprintf("   - Tamaño del efecto (d de Cohen): %.4f\n", d_cohen))

cat("\n============================================================================\n")
cat("                    ANÁLISIS COMPLETADO EXITOSAMENTE\n")
cat("============================================================================\n\n")
