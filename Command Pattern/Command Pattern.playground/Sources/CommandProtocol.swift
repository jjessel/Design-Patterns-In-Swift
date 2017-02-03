import Foundation

public protocol Command {
   func execute()
   func undo()
}

public struct EmptyCommand: Command {
   public func execute() {
      print("This is an empty command")
   }
   
   public func undo() {
      print("This is an empty command")
   }
}
