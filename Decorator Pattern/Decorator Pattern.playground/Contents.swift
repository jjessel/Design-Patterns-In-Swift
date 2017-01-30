//: The Decorator Pattern
// The decorator pattern "decorates" the original struct. It is actually wrapping the original struct, or Espresso here, with new iterations of itself. We can create a new beverage that contains Mocha, Soy, or Whip

import Foundation



var bev: Beverage = Espresso()
bev = Mocha(beverage: bev)
bev = Soy(beverage: bev)
bev = Whip(beverage: bev)
bev.cost
bev.description
