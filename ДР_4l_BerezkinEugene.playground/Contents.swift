import UIKit
import Foundation


enum speed{
    case on
    case off
}
enum cargo{
    case full
    case empty
}
class Car{
    var autoBr: String
    var yearOfIssue: Int
    init(autoBr: String, yearOfIssue: Int){
        self.autoBr = autoBr
        self.yearOfIssue = yearOfIssue
        }
    }
        class trunkCar: Car{
            var trunk: cargo
            init(autoBr: String, yearOfIssue: Int, trunk: cargo){
                self.trunk = trunk
                super.init(autoBr: autoBr, yearOfIssue: yearOfIssue)
            }
            func trunkCond(){
                if trunk == .full {
                    print("Trunk full")
                } else{
                    print("Trunk empty")
                }
            }
        }
        class sportCar: Car{
            var faster: speed
            init(autoBr: String, yearOfIssue: Int, faster: speed){
                self.faster = faster
                super.init(autoBr: autoBr, yearOfIssue: yearOfIssue)
            }
            func speedCond(){
                if faster == .on {
                    print("Sportcar goes faster")
                } else{
                    print("Sportcar goes slower")
                }
            }
        }

    
let ferrari = sportCar(autoBr: "Ferrari", yearOfIssue: 2001, faster: .on)
    ferrari.speedCond()


let unimog = trunkCar(autoBr: "Unimog", yearOfIssue: 1987, trunk: .empty)
unimog.trunkCond()
    
    
