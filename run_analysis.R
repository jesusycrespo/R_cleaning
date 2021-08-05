# cargo la libreria
library(dplyr)

#creo directorio
setwd("D:/curso_coursera/UCI HAR Dataset/test")

# leer archivos de test
x.test <- read.csv("X_test.txt", sep="",header=FALSE)
y.test <- read.csv("y_test.txt", sep="",header=FALSE)
subject.test <- read.csv("subject_test.txt",sep="", header=FALSE)

# Merge para unir todos los test
test <- data.frame(subject.test, y.test, x.test)

#creo directorio
setwd("D:/curso_coursera/UCI HAR Dataset/train")


# leo archivos train
x.train <- read.csv("X_train.txt", sep="",header=FALSE)
y.train <- read.csv("y_train.txt", sep="",header=FALSE)
subject.train <- read.csv("subject_train.txt",sep="", header=FALSE)

# Merge para unir todos los train
train <- data.frame(subject.train, y.train, x.train)

# consolido en una data
run.data <- rbind(train, test)

# borro archivos 
rm(subject.test, x.test, y.test, subject.train,x.train, y.train, test, train)

#creo directorio
setwd("D:/curso_coursera/UCI HAR Dataset/")

# leo las etiquetas
features <- read.csv("features.txt", sep="", header=FALSE)
activity.labels<-read.csv("activity_labels.txt",sep="", header=FALSE)

# convierto la segunda columna como vector
colum.names <- as.vector(features[, 2])

# Aplico las etiquetas
colnames(run.data)<-c("subject_id", "activity_labels",colum.names)

# seleccion columna con media y varianza y excluyo frecuencia y angle 

run.data=select(run.data, contains("subject"), contains("label"),contains("mean"), contains("std"), -contains("freq"),-contains("angle"))


# reemplazo las etiquetas en los datos 
run.data$activity_labels=as.character(activity.labels[match(run.data$activity_labels, activity.labels$V1), 'V2'])

#Limpio los datos y creo una variable llamada cuerpo

colnames(run.data)=setNames(colnames(run.data), gsub("\\(\\)","", colnames(run.data)))
colnames(run.data)=setNames(colnames(run.data), gsub("-", "_", colnames(run.data)))
colnames(run.data)=setNames(colnames(run.data), gsub("BodyBody", "Body", colnames(run.data)))

# calculos
run.data.summary=run.data%>%group_by(subject_id, activity_labels) %>%summarise_each(funs(mean))

write.table(run.data.summary,file="D:/curso_coursera/rundatasummary.csv",sep=';',row.names=FALSE)

run.data.summary



