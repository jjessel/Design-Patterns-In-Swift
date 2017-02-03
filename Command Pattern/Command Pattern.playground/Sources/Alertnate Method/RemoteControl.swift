import Foundation

public typealias RemoteCommand = () -> ()

public protocol Remote {
   var onCommands: [RemoteCommand] { get set }
   var offCommands: [RemoteCommand] { get set }
   var lastCommand: RemoteCommand { get }
   mutating func set(_ onCommand: @escaping RemoteCommand, and offCommand: @escaping RemoteCommand, forSlot: Int )
   mutating func onPressed(at slot:Int)
   mutating func offPressed(at slot: Int)
   mutating func undoLastPressed()
   init(forNumberOfSlots: Int)
}


/// The remote control contains 7 slots that each have an on button and an off button
public struct RemoteControl: Remote {
   public var onCommands: [RemoteCommand]
   public var offCommands: [RemoteCommand]
   public var lastCommand: RemoteCommand
   public init(forNumberOfSlots slots: Int) {
      onCommands = []
      offCommands = []
      lastCommand = { }
      for _ in 0..<slots {
         onCommands.append({ print("Empty Command") })
         offCommands.append({ print("Empty Command") })
      }
   }
   
   public mutating func set(_ onCommand: @escaping RemoteCommand, and offCommand: @escaping RemoteCommand, forSlot: Int ) {
      onCommands[forSlot] = onCommand
      offCommands[forSlot] = offCommand
   }
   
   public mutating func onPressed(at slot: Int) {
      onCommands[slot]()
      lastCommand = offCommands[slot]
   }
   
   public mutating func offPressed(at slot: Int) {
      offCommands[slot]()
      lastCommand = onCommands[slot]
   }
   
   public func undoLastPressed() {
      lastCommand()
   }
   

   
}
