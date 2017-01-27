import Foundation

public class StatisticsDisplay: WeatherObserver, DisplayElement {
   private var weatherData: Subject
   private var temperatures: [Double]
   private var average: Double {
      var sum: Double = 0.0
      _ = temperatures.map({ sum += $0 })
      return sum / Double(temperatures.count)
   }
   
   private var max: Double {
      return temperatures.max()!
   }
   
   private var min: Double {
      return temperatures.min()!
   }
   
   public init(weatherData: Subject) {
      self.weatherData = weatherData
      self.temperatures = []
      weatherData.registerObserver(self)
      
   }
   
   public func update(temp: Double, humidity: Double, pressure: Double) {
      self.temperatures.append(temp)
      display()
   }
   
   public func display() {
      print("Avg/Min/Max temperature = \(average)/\(min)/\(max)")
   }
}
