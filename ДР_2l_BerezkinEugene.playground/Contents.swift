import Foundation
import UIKit

// Task № 1

func determiningTheNumber (_ number: Int) {
    
        if number % 2 == 0 {
            print("\(number) Number even")
        } else {
            print("\(number) Number odd")
        }
}

determiningTheNumber(4)
// Task № 2

func determiningTheNumberTwo (_ number: Int) {
        if number % 3 == 0 {
            print("\(number) Number is divisible by 3 without remainder")
        } else {
            print("\(number) Number is not divisible by 3 without remainder")
    }
    
}
determiningTheNumberTwo(0)


// Task № 3

var myArray: Array<Int> = []
for number in 1 ... 100 {
    myArray.append(number)
}
print(myArray)

// Task № 4

print(myArray.filter ({$0 % 2 != 0 && $0 % 3 == 0}))

// Task № 5

func fibArray(_ n: Int) -> [Int] {
    var fib: [Int] = [1, 1]
    (2...n).forEach{ i in
        fib.append(fib[i - 1] + fib[i - 2])
    }
    return fib
}
print(fibArray(50))


    // Task № 6

func primeNum(arrayPassed: [Int]) -> [Int] {
    var simnumArr: [Int] = []
    var Arr = arrayPassed
    
    while let P = Arr.first {
        simnumArr.append(P)
        Arr = Arr.filter { $0 % P != 0 }
    }
    return simnumArr
}
print(primeNum(arrayPassed: Array(2...100)))




    










    









