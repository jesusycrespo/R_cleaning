DOCUMENTACION

Los datos utilizados y disponibles en el repositorio GettingCleaningData-run_analysis se tomaron del conjunto de datos disponible públicamente proporcionado por el Repositorio de aprendizaje automático de la Universidad de California en Irvine, como el "Conjunto de datos de reconocimiento de actividad humana mediante teléfonos inteligentes". Estos datos se obtuvieron del siguiente estudio:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Laboratorio de sistemas complejos no lineales DITEN - Universidad degli Studi di Genova, Génova I-16145, Italia. activityrecognition '@' smartlab.ws www.smartlab.ws Los datos se pusieron a disposición el 10 de diciembre de 2012. Los datos se descargaron para la construcción de run_analysis.R el 11 de junio de 2014.

Los datos se recopilaron de 30 voluntarios (de 19 a 48 años) que realizaron una variedad de actividades con un teléfono inteligente conectado a la cintura. Los datos fueron registrados por el teléfono (un Samsung Galaxy SII) durante seis actividades diferentes: caminar, subir escaleras, bajar escaleras, sentarse, pararse y acostarse. El acelerómetro y el giroscopio del teléfono registraron una variedad de medidas tridimensionales de velocidad, aceleración y ángulo.

Los datos de series de tiempo sin procesar del teléfono inteligente se procesaron previamente aplicando filtros de ruido para suavizar los datos. Se registró un vector de características a partir de los dominios de tiempo y frecuencia de los datos, dando un vector de 561 características de variables de tiempo y frecuencia. También se incluyen datos para identificar a cada participante individual y qué actividad se realizó. El conjunto completo de datos da 10299 observaciones de 561 variables. El objetivo de run_analysis.R es crear una función para limpiar y ordenar estos datos y dar un resumen de ciertas variables para cada actividad realizada por cada sujeto.



PROCESOS DE ANALISIS

El script, run_analysis.R lee los datos procesados del experimento y realiza algoritmo para tener todos los datos.

Tanto los conjuntos de datos de prueba y entrenamiento se leen y combinan para obtener un dataframe.
A las columnas de datos se les asignan nombres basados en el archivo origen features.txt.
Las columnas que contienen mediciones de desviación estándar o media se seleccionan del conjunto de datos, mientras que las otras columnas de medición se excluyen 

Los identificadores de actividad se reemplazan con las etiquetas del archivo activity_labels.txt.
Los caracteres no válidos se eliminan de los nombres de las columnas. Además, la frase BodyBody duplicada en algunos nombres de columnas se reemplaza por Body.
posteriomente, los datos se agrupan por tema y actividad, y se calcula la media para cada columna de medición.

Se comenta cada línea del script (run_analysis.R). 

DATOS USADOS EN EL SCRIPT

Los datos utilizados en run_analysis () son solo un subconjunto del conjunto de datos completo descrito anteriormente para examinar solo los valores de desviación estándar y media. Este subconjunto se determinó tomando cualquier variable que tuviera "mean" o "std" en su nombre (no distingue entre mayúsculas y minúsculas). Con el fin de ser conservadores y mantener las variables relevantes sin cortar las que puedan ser relevantes, la red se abrió de par en par.

Las siguientes son las variables que se guardaron y usaron para hacer el conjunto de datos ordenado (procedimiento como se describe en el archivo README). Además, las dos primeras variables (columnas) indican para cada observación (fila) cuál es el ID del sujeto y la actividad para cada media de la medición. Las descripciones de todas las variables restantes (columnas 3 a 81) son las anteriores.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag
Further transformations computations were completed to obtain the following set of variables from these signals (descriptions taken from the features.txt file from the UCI database):

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values.
iqr(): Interquartile range
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal
kurtosis(): kurtosis of the frequency domain signal
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
Additional vectors obtained by calculating the mean for certain signals:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
The data used in run_analysis() is only a subset of the entire dataset described above in order to examine only mean and standard deviation values. This subset was determined by taking any variable that had "mean" or "std" in its name (case insensitive). In order to be conservative and keep any relevant variables without cutting any that may be relevant, the net was cast wide.

The following are the variables that were kept and used to make the tidy dataset (procedure as described in the README file). In addition, the first two variables (columns) indicate for each observation (row) what the subject ID and activity are for each mean of the measurement. The descriptions of all remaining variables (columns 3 to 81) are as above.

subject_id
activity_name
tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAcc_meanFreq_X
fBodyAcc_meanFreq_Y
fBodyAcc_meanFreq_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyAccJerk_meanFreq_X
fBodyAccJerk_meanFreq_Y
fBodyAccJerk_meanFreq_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyGyro_meanFreq_X
fBodyGyro_meanFreq_Y
fBodyGyro_meanFreq_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyAccMag_meanFreq
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyAccJerkMag_meanFreq
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroMag_meanFreq
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std
fBodyBodyGyroJerkMag_meanFreQ
