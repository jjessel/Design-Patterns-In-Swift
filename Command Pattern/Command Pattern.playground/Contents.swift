//: Command Pattern - The command pattern decouples objects from each other. The object executing the commands knows nothing about the object giving the commands. 

import Foundation

var simpleRemote = SimpleRemoteControl(forNumberOfSlots: 2)

var light = Light()
var lightOn = LightOnCommand(for: light)
var lightOff = LightOffCommand(for: light)

var garageDoor = GarageDoor()
var garageOpen = GarageDoorOpenCommand(for: garageDoor)
var garageClose = GarageDoorCloseCommand(for: garageDoor)

simpleRemote.set(lightOn, and: lightOff, forSlot: 0)
simpleRemote.set(garageOpen, and: garageClose, forSlot: 1)

simpleRemote.onPressed(at: 0)
simpleRemote.onPressed(at: 1)

simpleRemote.offPressed(at: 0)
simpleRemote.offPressed(at: 1)

simpleRemote.undoLastPress()


// Here we change the remote to using closures for the commands and we can directly pass in what we want to do.

var remote = RemoteControl(forNumberOfSlots: 4)
remote.set({ light.on() }, and: { light.off() }, forSlot: 0)
remote.set( {
               garageDoor.stop()
               garageDoor.up()
            } ,
            and: {
               garageDoor.stop()
               garageDoor.down()
            },
            forSlot: 1)
remote.offPressed(at: 0)
remote.undoLastPressed()