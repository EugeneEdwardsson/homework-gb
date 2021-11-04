import UIKit
import Foundation



enum engineWork{
    case start
    case stop
    }

enum carWindows{
    case open
    case close
}

enum trunkCondition{
    case full
    case empty
}

struct carortruck {
    var autoBr: String
    var yearOfIssue: Int
    var trunkVolume: Int
    var actionEngine: engineWork {
        willSet{
        if newValue == .stop {
            print("\(autoBr), Enginestop")
        }else { print("\(autoBr), Enginestart")
            }
    }
    }
    var actionWindow: carWindows {
            willSet{
            if newValue == .open {
                print("\(autoBr), Windows open")
            } else { print("\(autoBr), Windows close")
            }
        
            }
    }
    var actionTrunk: trunkCondition {
        willSet{
            if newValue == .full {
                print("\(autoBr), Trunk full")
            }else { print("\(autoBr), Trunk empty")
            }
        
        }
    }
    var fullOrEmptyPartTrunk: Int
}
var car = carortruck(autoBr: "Toyota", yearOfIssue: 2014, trunkVolume: 470, actionEngine: engineWork.start, actionWindow: carWindows.open, actionTrunk: trunkCondition.full, fullOrEmptyPartTrunk: 100 )
var truck = carortruck(autoBr: "MAN", yearOfIssue: 2018, trunkVolume: 25000, actionEngine: engineWork.stop, actionWindow: carWindows.open, actionTrunk: trunkCondition.empty, fullOrEmptyPartTrunk: 14000)
car.actionTrunk = trunkCondition.empty
car.actionEngine = engineWork.stop
truck.actionWindow = carWindows.close
print("My car brand \(car.autoBr) It is \(car.yearOfIssue) Trunk volume \(car.trunkVolume)")
print("My truck brand \(truck.autoBr) It is \(truck.yearOfIssue) Trunk volume \(truck.trunkVolume)")

