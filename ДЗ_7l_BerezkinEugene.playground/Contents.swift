import UIKit

enum AutoloadErrors: Error {
    case Shellsended
    case NotEnoughAmmo
}

struct MBTcond {
    var ammoRequirement: Int
    var numberOfShells: Int
}


class autoload {
    var totalAmmo = 10
    
    var shellbox = [
        "Number of high-explosive projectile": MBTcond(ammoRequirement: 10, numberOfShells: 4),
        "Number of sub-calibe projectile": MBTcond(ammoRequirement: 10, numberOfShells: 0),
        "Number of armor-piercing incendiary projectile": MBTcond(ammoRequirement: 10, numberOfShells: 4)
    ]

    func numberOfShells(withName: String) throws {
    guard var shells = shellbox[withName] else {
        throw AutoloadErrors.Shellsended
    }
    guard shells.numberOfShells > 0 else {
        throw AutoloadErrors.Shellsended
    }
        guard shells.ammoRequirement <= totalAmmo else {
            throw AutoloadErrors.NotEnoughAmmo
        }
    totalAmmo -= shells.ammoRequirement
    shells.numberOfShells -= 1
    shellbox[withName] = shells
    print("Load your ammo: \(withName)")
    }

}

let autoLoad = autoload()
try? autoLoad.numberOfShells(withName: "Number of high-explosive projectile")
autoLoad.shellbox
autoLoad.totalAmmo

do{
    try autoLoad.numberOfShells(withName: "Number of sub-caliber projectile")
} catch AutoloadErrors.Shellsended{
    print("Ended shells!")
} catch AutoloadErrors.NotEnoughAmmo{
    print("Critical Error: Not enough ammo to load!")
}


