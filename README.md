# ESTADÍSTICA: Estudio de Tolerancia a la Glucosa

## Descripción del Proyecto

Este proyecto contiene un análisis estadístico completo sobre la tolerancia a la glucosa en dos grupos poblacionales: jóvenes (menores de 30 años) y adultos (mayores de 30 años). El estudio evalúa los niveles de glucosa en sangre en estado basal y a los 60 minutos después de la ingestión de glucosa.

## Contenido del Análisis

### 1. Medidas de Centralización
- Media, mediana y moda para ambos grupos
- Análisis de niveles basales y a los 60 minutos

### 2. Medidas de Dispersión
- Rango, varianza, desviación estándar
- Coeficiente de variación
- Rango intercuartílico (IQR)

### 3. Medidas de Forma
- **Asimetría (Skewness)**: Evaluación de la simetría de la distribución
- **Curtosis**: Análisis del apuntamiento de la distribución

### 4. Cuartiles y Outliers
- Cálculo de Q1, Q2 (mediana), Q3
- Identificación de valores atípicos mediante método IQR
- Visualización con box-plots

### 5. Pruebas de Normalidad
- Test de Shapiro-Wilk
- Test de Kolmogorov-Smirnov (Lilliefors)
- Histogramas con curva normal superpuesta

### 6. Análisis de Relación Lineal (Jóvenes)
- Coeficiente de correlación de Pearson
- Modelo de regresión lineal: Glucosa 60 min vs Glucosa Basal
- Coeficiente de determinación (R²)
- Estimaciones y predicciones con intervalos de confianza
- Gráficos de dispersión con línea de ajuste
- Diagnóstico del modelo de regresión

### 7. Inferencia Estadística
- **Intervalos de Confianza (95%)**:
  - Para medias de ambos grupos
  - Para proporciones
- **Contrastes de Hipótesis** (α = 0.05):
  - Comparación de medias entre jóvenes y adultos
  - Tests sobre valores específicos
  - Test t de Student

### 8. Análisis de Datos Emparejados (Adultos)
- Comparación antes/después de la ingestión de glucosa
- Test t pareado
- Tamaño del efecto (d de Cohen)
- Intervalos de confianza para diferencias
- Visualización de cambios individuales

## Archivos del Proyecto

- `datos_glucosa.csv`: Dataset con las mediciones de glucosa
  - Columnas: grupo, edad, glucosa_basal, glucosa_60min
  - 30 observaciones para jóvenes
  - 30 observaciones para adultos

- `analisis_glucosa.R`: Script completo de análisis estadístico en R
  - Análisis descriptivo
  - Inferencia estadística
  - Generación de gráficos

## Gráficos Generados

El script genera los siguientes gráficos:

1. `boxplot_glucosa_basal.png` - Box-plot comparativo de glucosa basal
2. `boxplot_glucosa_60min.png` - Box-plot comparativo de glucosa a 60 min
3. `histograma_jovenes_basal.png` - Histograma con curva normal
4. `histograma_jovenes_60min.png` - Histograma con curva normal
5. `scatter_regresion_jovenes.png` - Dispersión con línea de regresión
6. `diagnostico_modelo_jovenes.png` - Diagnósticos del modelo de regresión
7. `diferencias_adultos.png` - Distribución de diferencias emparejadas
8. `antes_despues_adultos.png` - Comparación antes/después en adultos

## Requisitos

### Software
- R (versión 3.6 o superior)

### Paquetes de R
- `ggplot2` - Visualización de datos
- `moments` - Cálculo de asimetría y curtosis
- `nortest` - Tests de normalidad

Los paquetes se instalan automáticamente al ejecutar el script.

## Ejecución

Para ejecutar el análisis:

```bash
Rscript analisis_glucosa.R
```

O desde R:

```r
source("analisis_glucosa.R")
```

## Nivel de Significación

Todos los contrastes de hipótesis se realizan con un **nivel de significación α = 0.05 (5%)**.

## Resultados

El script genera:
- Salida completa en consola con todas las estadísticas
- 8 archivos PNG con visualizaciones
- Interpretaciones y conclusiones para cada análisis

## Metodología Estadística

### Tests Utilizados
- **Shapiro-Wilk**: Normalidad de datos (n < 50)
- **Kolmogorov-Smirnov (Lilliefors)**: Normalidad de datos
- **Test t de Student**: Comparación de medias (dos muestras independientes)
- **Test t pareado**: Comparación de medias (datos emparejados)
- **Test F**: Igualdad de varianzas
- **Correlación de Pearson**: Relación lineal entre variables

### Regresión Lineal
Modelo: **Y = β₀ + β₁X + ε**
- Y: Glucosa a 60 minutos
- X: Glucosa basal
- Estimación por mínimos cuadrados ordinarios (MCO)
- Análisis de residuos y diagnósticos del modelo

## Interpretación de Resultados

### Valores de Referencia para Glucosa
- **Normal en ayunas**: 70-100 mg/dL
- **Prediabetes**: 100-125 mg/dL
- **Diabetes**: ≥ 126 mg/dL

### Coeficiente de Correlación (r)
- 0.0 - 0.3: Correlación débil
- 0.3 - 0.7: Correlación moderada
- 0.7 - 1.0: Correlación fuerte

### Tamaño del Efecto (d de Cohen)
- < 0.2: Efecto pequeño
- 0.2 - 0.8: Efecto mediano
- > 0.8: Efecto grande

## Autor

Diego Olalla

## Licencia

Este proyecto es parte de una tarea académica de Estadística.
