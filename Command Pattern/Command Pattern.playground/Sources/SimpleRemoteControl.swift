import Foundation



public protocol CommandableRemote {
   var onCommands: [Command] { get set }
   var offCommands: [Command] { get set }
   var lastCommand: Command { get }
   mutating func set(_ onCommand: Command, and offCommand: Command, forSlot: Int )
   mutating func onPressed(at slot:Int)
   mutating func offPressed(at slot: Int)
   func undoLastPress()
   init(forNumberOfSlots: Int)
}


/// The remote control contains 7 slots that each have an on button and an off button
public struct SimpleRemoteControl: CommandableRemote {
   public var onCommands: [Command]
   public var offCommands: [Command]
   public var lastCommand: Command
   
   public init(forNumberOfSlots slots: Int) {
      onCommands = []
      offCommands = []
      lastCommand = EmptyCommand()
      
      for _ in 0..<slots {
         onCommands.append(EmptyCommand())
         offCommands.append(EmptyCommand())
      }
   }
   
   public mutating func set(_ onCommand: Command, and offCommand: Command, forSlot: Int) {
      onCommands[forSlot] = onCommand
      offCommands[forSlot] = offCommand
   }
   
   public mutating func onPressed(at slot: Int) {
      onCommands[slot].execute()
      lastCommand = onCommands[slot]
   }
   
   public mutating func offPressed(at slot: Int) {
      offCommands[slot].execute()
      lastCommand = offCommands[slot]
   }
   
   public func undoLastPress() {
      lastCommand.undo()
   }
   
}
