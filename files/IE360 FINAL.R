library(lubridate)
library(dplyr)
library(ggplot2)
library(readxl)
library(data.table)
library(zoo)
library(GGally)
library(ggcorrplot)
library(urca)
library(forecast)

solarpower=read.csv("/Users/edakocakarin/Desktop/production_data_with_weather.csv")

electricity=data.table(Date=a$Tarih, Hour=a$Saat, Consumption=a$`Tuketim Miktar˝ (MWh)`)
dailyData=data.table(electricity%>% group_by(Date)%>% summarise(dailyConsumption=mean(Consumption)))
dailyData$Date=as.Date(dailyData$Date, format = "%d.%m.%Y")
dailyData=dailyData%>%arrange(Date)


