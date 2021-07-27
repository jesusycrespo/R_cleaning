# R_cleaning

Un análisis de los datos del acelerómetro generados a partir de un experimento con los teléfonos inteligentes Samsung Galaxy S.

CONTENIDO

run_analysis.R - script donde se visualiza paso a paso como se leen los datos, la limpieza y transformacion de los titulos y el resumen de los datos experimentales 
README.md -resumen del archivo 

PROCESOS DE ANALISIS

El script, run_analysis.R lee los datos procesados del experimento y realiza algoritmo para tener todos los datos.

Tanto los conjuntos de datos de prueba y entrenamiento se leen y combinan para obtener un dataframe.
A las columnas de datos se les asignan nombres basados en el archivo origen features.txt.
Las columnas que contienen mediciones de desviación estándar o media se seleccionan del conjunto de datos, mientras que las otras columnas de medición se excluyen 

Los identificadores de actividad se reemplazan con las etiquetas del archivo activity_labels.txt.
Los caracteres no válidos se eliminan de los nombres de las columnas. Además, la frase BodyBody duplicada en algunos nombres de columnas se reemplaza por Body.
posteriomente, los datos se agrupan por tema y actividad, y se calcula la media para cada columna de medición.

Se comenta cada línea del script (run_analysis.R). 


INICIO 

Lea el README.MD y el script run_analysis.R para obtener una comprensión general de este proyecto
Los datos puede encontrarlo en la siguiente direccion https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Asegúrese de que los datos del experimento se descarguen y extraigan a una carpeta en el directorio del proyecto llamada UCI HAR Dataset.
Ejecute el script run_analysis.R.
