import UIKit

// Task 1
// Quadratic equation: ax^2+by+c=0. Let we have coeffs a, b and c.


func SolveQuadraticEquation(a: Double, b : Double, c : Double) -> (root1: Double, root2: Double)? {
    var x1 : Double = 0, x2 : Double = 0
    let D = pow(b, 2) - 4 * a * c; print(D)
    if D < 0 {
        print("There is no real roots!")
        return nil
    }
    x1 = (-b + sqrt(D)) / (2 * a);
    x2 = (-b - sqrt(D)) / (2 * a);
    return (x1,x2)
}


let roots = SolveQuadraticEquation(a: 1, b: -4, c: 4)

// Task 2
let a : Double = 3, b : Double = 4
let c = sqrt(pow(a,2) + pow(b,2))
print("Hypotenuse: c = ", c)
print("P = ", a + b + c)
print("S = ", a * b / 2)


// Task 3
let depositSum = 1500
let percentPerYear = 20

var resSum = 1500
for _ in 0..<5 {
    resSum += resSum * percentPerYear / 100
}
print("The sum of deposit will be", resSum, "in 5 years")
