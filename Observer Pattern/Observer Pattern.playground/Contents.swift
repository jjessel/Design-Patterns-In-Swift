//: Playground - noun: a place where people can play

import Foundation

// Create the weather tracker
let weatherData = WeatherData()

// Create the observer displays
let currentDisplay = CurrentConditionDisplay(weatherData: weatherData)
let statisticDisplay = StatisticsDisplay(weatherData: weatherData)
let forecastDisplay = ForecastDisplay(weatherData: weatherData)

// Update the weather data and wait for observers to respond
weatherData.setMeasurements(temperature: 80, humidity: 65, pressure: 30.4)
weatherData.setMeasurements(temperature: 82, humidity: 70, pressure: 29.2)