//: Playground - noun: a place where people can play

import Foundation

var single = Single.sharedInstance
print(single.number) // 0

single.number = 5
print(single.number) // 5

var second = Single.sharedInstance
print(second.number) // 5

second.number = 10
print(single.number) // 10