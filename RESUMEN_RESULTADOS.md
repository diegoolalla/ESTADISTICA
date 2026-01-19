# RESUMEN DE RESULTADOS - Estudio de Tolerancia a la Glucosa

## Información del Estudio

**Objetivo**: Analizar la tolerancia a la glucosa en jóvenes (< 30 años) y adultos (> 30 años)

**Nivel de significación**: α = 0.05 (5%)

**Muestra**: 
- 30 jóvenes (21-29 años)
- 30 adultos (35-49 años)

## Principales Hallazgos

### 1. Estadística Descriptiva

#### Glucosa Basal
- **Jóvenes**: Media = 86.83 mg/dL (IC 95%: 85.64-88.02)
- **Adultos**: Media = 95.47 mg/dL (IC 95%: 94.13-96.80)
- **Diferencia**: 8.63 mg/dL (estadísticamente significativa, p < 0.001)

#### Glucosa a los 60 minutos
- **Jóvenes**: Media = 113.80 mg/dL (IC 95%: 111.68-115.92)
- **Adultos**: Media = 141.43 mg/dL (IC 95%: 138.78-144.08)
- **Diferencia**: 27.63 mg/dL (estadísticamente significativa, p < 0.001)

### 2. Medidas de Forma

#### Simetría (Coeficiente de Asimetría)
- Todas las distribuciones muestran asimetría cercana a cero, indicando distribuciones aproximadamente simétricas
- Jóvenes - Glucosa Basal: 0.0229
- Adultos - Glucosa Basal: 0.1391

#### Curtosis (Exceso de Curtosis)
- Todas las distribuciones son platicúrticas (< 0), indicando colas más ligeras que la distribución normal
- Valores entre -1.04 y -1.26

### 3. Pruebas de Normalidad

**Test de Shapiro-Wilk**: Todos los grupos de datos siguen una distribución normal (p > 0.05)
- Jóvenes - Glucosa Basal: W = 0.9771, p = 0.7441 ✓
- Jóvenes - Glucosa 60 min: W = 0.9739, p = 0.6491 ✓
- Adultos - Glucosa Basal: W = 0.9540, p = 0.2159 ✓
- Adultos - Glucosa 60 min: W = 0.9675, p = 0.4733 ✓

### 4. Análisis de Outliers

**Resultado**: No se detectaron valores atípicos en ninguno de los grupos utilizando el método IQR (rango intercuartílico).

### 5. Modelo de Regresión Lineal (Jóvenes)

**Relación**: Glucosa Basal vs Glucosa 60 minutos

**Ecuación del modelo**:
```
Glucosa_60min = -37.33 + 1.74 × Glucosa_Basal
```

**Calidad del ajuste**:
- Coeficiente de correlación de Pearson: r = 0.9764 (correlación muy fuerte)
- R² = 0.9533 (95.33% de variabilidad explicada)
- R² ajustado = 0.9516
- Error estándar residual = 1.25 mg/dL

**Significancia estadística**:
- Pendiente (β₁): t = 23.91, p < 0.001 (altamente significativa)
- Intercepto (β₀): t = -5.90, p < 0.001 (altamente significativa)

**Interpretación**: 
- Por cada 1 mg/dL de aumento en la glucosa basal, se predice un aumento de 1.74 mg/dL en la glucosa a los 60 minutos
- El modelo tiene un excelente ajuste y poder predictivo

**Ejemplos de predicción**:
- Glucosa Basal = 85 mg/dL → Glucosa 60 min predicha = 110.61 mg/dL (IC 95%: 107.99-113.22)
- Glucosa Basal = 90 mg/dL → Glucosa 60 min predicha = 119.31 mg/dL (IC 95%: 116.67-121.95)

### 6. Comparación entre Grupos

#### Test t de Student (muestras independientes)

**Glucosa Basal**:
- t = -9.88, gl = 58, p < 0.001
- Conclusión: Los adultos tienen niveles significativamente más altos de glucosa basal que los jóvenes

**Glucosa 60 min**:
- t = -16.65, gl = 58, p < 0.001
- Conclusión: Los adultos tienen niveles significativamente más altos de glucosa a los 60 minutos que los jóvenes

### 7. Análisis de Datos Emparejados (Adultos)

**Comparación**: Glucosa Basal vs Glucosa 60 min (antes y después de la ingestión)

**Estadísticas de las diferencias**:
- Media de las diferencias: 45.97 mg/dL
- Desviación estándar: 3.57 mg/dL
- Rango: 40.00 - 53.00 mg/dL

**Test de normalidad de las diferencias**:
- Shapiro-Wilk: W = 0.9687, p = 0.5044 (distribución normal) ✓

**Test t pareado**:
- t = 70.58, gl = 29, p < 0.001
- IC 95% para la diferencia media: [44.63, 47.30] mg/dL
- Tamaño del efecto (d de Cohen): 12.89 (efecto muy grande)

**Conclusión**: Existe un incremento altamente significativo en los niveles de glucosa tras la ingestión de glucosa (aumento promedio de ~46 mg/dL).

### 8. Intervalos de Confianza para Proporciones

**Jóvenes con Glucosa Basal > 85 mg/dL**:
- Proporción: 63.33% (IC 95%: 46.09% - 80.58%)

**Adultos con Glucosa Basal > 95 mg/dL**:
- Proporción: 46.67% (IC 95%: 28.81% - 64.52%)

**Jóvenes con Glucosa 60 min > 115 mg/dL**:
- Proporción: 40.00% (IC 95%: 22.47% - 57.53%)

## Conclusiones Generales

1. **Diferencias significativas entre grupos**: Los adultos presentan niveles de glucosa significativamente más altos tanto en estado basal como a los 60 minutos después de la ingestión de glucosa.

2. **Validación de supuestos**: Todos los datos siguen distribuciones normales y no presentan valores atípicos, lo que valida el uso de pruebas paramétricas.

3. **Relación lineal fuerte**: En jóvenes, existe una relación lineal muy fuerte entre la glucosa basal y la glucosa a los 60 minutos (r = 0.98), lo que permite hacer predicciones precisas.

4. **Respuesta a la glucosa**: Todos los adultos experimentan un incremento significativo y consistente en los niveles de glucosa tras la ingestión (promedio de 46 mg/dL).

5. **Dispersión**: Ambos grupos muestran baja variabilidad (CV < 5%), indicando homogeneidad en las respuestas.

6. **Implicaciones clínicas**: Los adultos muestran una menor tolerancia a la glucosa comparado con los jóvenes, lo cual es consistente con los cambios metabólicos asociados a la edad.

## Archivos Generados

### Datos
- `datos_glucosa.csv` - Dataset con 60 observaciones

### Análisis
- `analisis_glucosa.R` - Script completo de análisis estadístico
- `analisis_salida.txt` - Resultados completos del análisis

### Visualizaciones
1. `boxplot_glucosa_basal.png` - Box-plot comparativo de glucosa basal
2. `boxplot_glucosa_60min.png` - Box-plot comparativo de glucosa a 60 min
3. `histograma_jovenes_basal.png` - Histograma con curva normal (jóvenes, basal)
4. `histograma_jovenes_60min.png` - Histograma con curva normal (jóvenes, 60 min)
5. `scatter_regresion_jovenes.png` - Gráfico de dispersión con línea de regresión
6. `diagnostico_modelo_jovenes.png` - Diagnósticos del modelo de regresión (4 gráficos)
7. `diferencias_adultos.png` - Distribución de diferencias emparejadas
8. `antes_despues_adultos.png` - Comparación antes/después en adultos

## Metodología Aplicada

- Estadística descriptiva (medidas de centralización y dispersión)
- Análisis de forma (simetría y curtosis)
- Identificación de outliers (método IQR)
- Pruebas de normalidad (Shapiro-Wilk)
- Correlación de Pearson
- Regresión lineal simple por mínimos cuadrados
- Intervalos de confianza (95%) para medias y proporciones
- Test t de Student (muestras independientes y pareadas)
- Test F para igualdad de varianzas
- Tamaño del efecto (d de Cohen)

---

**Fecha de análisis**: Enero 2026

**Software utilizado**: R versión 4.3.3
