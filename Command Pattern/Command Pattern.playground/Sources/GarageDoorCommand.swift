import Foundation

public protocol GarageDoorCommand: Command {
   var garageDoor: GarageDoor { get }
   init(`for` garageDoor: GarageDoor)
}

public struct GarageDoor {
   public init() {}
   public func up() {
      print("Open garage door")
   }
   
   public func down() {
      print("Close garage door")
   }
   
   public func stop() {
      print("Stop garage door")
   }

}

public struct GarageDoorOpenCommand: GarageDoorCommand {
   public var garageDoor: GarageDoor
   
   public init(for garageDoor: GarageDoor) {
      self.garageDoor = garageDoor
   }
   
   public func execute() {
      garageDoor.stop()
      garageDoor.up()
   }
   
   public func undo() {
      garageDoor.stop()
      garageDoor.down()
   }
}

public struct GarageDoorCloseCommand: GarageDoorCommand {
   public var garageDoor: GarageDoor
   
   public init(for garageDoor: GarageDoor) {
      self.garageDoor = garageDoor
   }
   
   public func execute() {
      garageDoor.stop()
      garageDoor.down()
   }
   
   public func undo() {
      garageDoor.stop()
      garageDoor.up()
   }
}
