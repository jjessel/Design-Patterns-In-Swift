import Foundation


public protocol LightCommand: Command {
   var light: Light { get }
   init(`for` light: Light)
}

public struct Light {
   public init() {}
   public func on() {
      print("Light on")
   }
   
   public func off() {
      print("Light off")
   }
}

public struct LightOnCommand: LightCommand {
   public var light: Light
   
   public init(for light: Light) {
      self.light = light
   }
   
   public func execute() {
      light.on()
   }
   
   public func undo() {
      light.off()
   }
}

public struct LightOffCommand: LightCommand {
   public var light: Light
   public init(for light: Light) {
      self.light = light
   }
   
   public func execute() {
      light.off()
   }
   
   public func undo() {
      light.on()
   }
}
