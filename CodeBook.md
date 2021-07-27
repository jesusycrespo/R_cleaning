
PROCESOS DE ANALISIS

El script, run_analysis.R lee los datos procesados del experimento y realiza algoritmo para tener todos los datos.

Tanto los conjuntos de datos de prueba y entrenamiento se leen y combinan para obtener un dataframe.
A las columnas de datos se les asignan nombres basados en el archivo origen features.txt.
Las columnas que contienen mediciones de desviación estándar o media se seleccionan del conjunto de datos, mientras que las otras columnas de medición se excluyen 

Los identificadores de actividad se reemplazan con las etiquetas del archivo activity_labels.txt.
Los caracteres no válidos se eliminan de los nombres de las columnas. Además, la frase BodyBody duplicada en algunos nombres de columnas se reemplaza por Body.
posteriomente, los datos se agrupan por tema y actividad, y se calcula la media para cada columna de medición.

Se comenta cada línea del script (run_analysis.R). 
