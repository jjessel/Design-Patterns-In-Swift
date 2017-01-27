import Foundation

// The subject that is being observerd
public protocol Subject {
   func registerObserver(_ ob: WeatherObserver)
   func removeObserver(_ ob : WeatherObserver)
   func notifyObservers()
}

// The update method that all WeatherObservers will get
public protocol WeatherObserver: class {
   func update(temp: Double, humidity: Double, pressure: Double)
}

// All display elements require a method to display thier observered data
public protocol DisplayElement {
   func display()
}
