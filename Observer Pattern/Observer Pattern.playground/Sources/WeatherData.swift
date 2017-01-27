import Foundation

public class WeatherData: Subject {
   private var observers: [WeatherObserver]
   private var temperature: Double = 0.0
   private var humidity: Double = 0.0
   private var pressure: Double = 0.0
   
   public init() {
      observers = []
   }
   
   public func registerObserver(_ ob: WeatherObserver) {
      observers.append(ob)
   }
   
   public func removeObserver(_ ob: WeatherObserver) {
      for i in 0..<observers.count {
         if observers[i] === ob {
            observers.remove(at: i)
            break
         }
      }
   }
   
   public func notifyObservers() {
      for observer in observers {
         observer.update(temp: temperature, humidity: humidity, pressure: pressure)
      }
   }
   
   public func measurementsChanged() {
      notifyObservers()
   }
   
   public func setMeasurements(temperature: Double, humidity: Double, pressure: Double) {
      self.temperature = temperature
      self.humidity = humidity
      self.pressure = pressure
      notifyObservers()
   }
   
}
