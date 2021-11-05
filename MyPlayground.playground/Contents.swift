import UIKit

var greeting = "Hello, playground"




class Student {
    var name : String
    var surname : String
    var yearOfBorn : Int
    var mark : Double
    
    init(name: String, surname : String, yearOfBorn : Int, mark : Double) {
        self.name = name
        self.surname = surname
        self.yearOfBorn = yearOfBorn
        self.mark = mark
    }
    func objectStudent(){
        let object = Student(name: "Mike", surname: "Lorne", yearOfBorn: 30, mark: 2.0)
    
        print(object)
    }
    
}

