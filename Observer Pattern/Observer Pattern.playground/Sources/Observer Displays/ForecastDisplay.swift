import Foundation

public class ForecastDisplay: WeatherObserver, DisplayElement {
   private var weatherData: Subject
   private var temperature: Double = 0.0
   
   
   public init(weatherData: Subject) {
      self.weatherData = weatherData
      weatherData.registerObserver(self)
   }
   
   public func update(temp: Double, humidity: Double, pressure: Double) {
      self.temperature = temp
      display()
   }
   
   public func display() {
      print("More of the same")
   }
}
