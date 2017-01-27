import Foundation

public class CurrentConditionDisplay: WeatherObserver, DisplayElement {
   private var temperature: Double = 0.0
   private var humidity: Double = 0.0
   private var weatherData: Subject
   
   public init(weatherData: Subject) {
      self.weatherData = weatherData
      weatherData.registerObserver(self)
   }
   
   public func update(temp: Double, humidity: Double, pressure: Double) {
      self.temperature = temp
      self.humidity = humidity
      display()
   }
   
   public func display() {
      print("Current conditions: \(temperature)F degrees and \(humidity) humidity.")
   }
}

