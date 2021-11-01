 import Foundation
 import UIKit

// Task № 1  x2 — 10 = 39

 var a:Float = 0
 var b:Float = 39
 var c:Float = 10
 let x = (b + c)
 print(x/2)
 

// Task № 2


var legofTriangleA:Double = 3
var legofTriangleB:Double = 4

let areaofTriangle:Double = 0.5 + (legofTriangleA * legofTriangleB)
let hypotenuseofTriangle:Double = legofTriangleA + legofTriangleB
let perimeterofTriangle:Double = legofTriangleA + legofTriangleB + hypotenuseofTriangle

print("The area of the triangle is \(areaofTriangle)")
print("the perimeter of the triangle is \(perimeterofTriangle)")
print("the hypotenuse of the triangle is \(hypotenuseofTriangle)")


// Task № 3
var depositYear:Float = 30000
var amountYear:Float = 7
amountYear = amountYear / 100
var form = depositYear + (depositYear * amountYear) * 5
    print("After 5 years, the amount of the deposit will be equal to \(form)$")


