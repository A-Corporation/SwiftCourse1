import UIKit
// Task 1

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

print(isEven(number: 7))
print(isEven(number: 12))

// Task 2

func isDivided(by divider: Int, dividend: Int) -> Bool {
    return dividend % divider == 0
}


print(isDivided(by: 3, dividend: 16))
print(isDivided(by: 3, dividend: 15))

// Task 3

var arr = [Int]()
for i in 0..<100 {
    arr.append(i)
}

// Task 4

arr.indices.reversed().forEach {
    if isEven(number: arr[$0]) || !isDivided(by: 3, dividend: arr[$0]){
        arr.remove(at: $0)
    }
}

print(arr)


// Task 5

func addFibonacciNumberToArray(array: inout [Int]) {
    switch array.count {
    case 0: array.append(0)
    case 1: array.append(1)
    default:
        array.append(array.last! + array[array.count - 2])
    }
}

var fibonacciNumbers = [Int]()

for _ in 0..<50 {
    addFibonacciNumberToArray(array: &fibonacciNumbers)
}

print(fibonacciNumbers)


// Task 6


func getPrivateNumbers(to maxNumber: Int) -> [Int] {
    var crossedNumbers = Array(repeating: false, count: maxNumber - 2)
    for i in 2...maxNumber {
        if i * i > maxNumber {break}
        if crossedNumbers[i-2] == false {
            for j in stride(from: i * i, to: maxNumber, by: i) {
                crossedNumbers[j-2] = true
            }
        }
    }
    return crossedNumbers.indices.filter { crossedNumbers[$0] == false }.map { $0 + 2 }
}

var privateNumbers = getPrivateNumbers(to: 1000)[0..<100]
print(privateNumbers)
