//: Playground - noun: a place where people can play

/// The strategy pattern encapsulates behaviors. By storing each behavior as a struct and maintaining a propterty to keep track of the behavior, we can change the output at runtime.

import UIKit

var dog = DogDrawing()

dog.jump()
dog.speak()
dog.description()
