import UIKit

enum autoloadSelfPropelledHowitzerErrors: Error {
    case jammedAutomaticLoader
    case endedShells
}


class autoload {
    var loader: Bool
    var shells: Int
    
    init(loader: Bool, shells: Int) {
    self.loader = loader
    self.shells = shells
    }
    
    func numberOfShells() throws {
        if shells < 1 {
            throw autoloadSelfPropelledHowitzerErrors.endedShells
        }
    }
    func autoLoaderStatus() throws{
        if loader == false {
            throw autoloadSelfPropelledHowitzerErrors .jammedAutomaticLoader
        }else {
            print("Automatic loader ready to work")
        }
    }
}
var howitzer = autoload(loader: false, shells: 0)

do{
    try howitzer.numberOfShells()
} catch autoloadSelfPropelledHowitzerErrors.endedShells{
    print("Ended shells!")
}
do{
    try howitzer.autoLoaderStatus()
} catch autoloadSelfPropelledHowitzerErrors.jammedAutomaticLoader{
    print("Critical Error: Automatic loader jammed!")
}

