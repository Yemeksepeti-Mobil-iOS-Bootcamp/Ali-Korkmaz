import UIKit

var str = "Hello, playground"


//Project Euler 1
var c = 0
var sum = 0
while c < 1000 {
    if c % 5 == 0 || c % 3 == 0 {
        sum = sum + c
        c = c + 1
    } else {
        c = c + 1
    }
}
print("Solution 1: \(sum)")


//Project Euler 2

var sequence = [1,2]

var index = 1
var sum1 = 0

repeat {
    sequence.append(sequence[index-1] + sequence[index])
    index = index + 1
} while sequence[sequence.endIndex - 1] < 4000000

sequence.popLast()

for numbers in sequence {
    if (numbers % 2 == 0) {
        sum1 += numbers
    }
}
print("Solution 2: \(sum1)")

// Project Euler 3

class factor {
    var arrayFactors: [Int]
    
    init () {
        self.arrayFactors = []
    }
    
    func findFactors(number:Int) -> Int {
        var i = 2
        var nextNumber: Int = number
        
        while nextNumber > 1 {
            
            if nextNumber % i == 0 {
                arrayFactors.append(i)
                nextNumber = Int(nextNumber / i)
                while nextNumber % i == 0 {
                    nextNumber = Int(nextNumber / i)
                }
                
                //print("factor \(i) leaves number \(nextNumber)")
                
            }
            
            i += 1
        }
        
        return arrayFactors.removeLast()
    }
}

let myFactor = factor()
let number = 600851475143
print("Question 3: largest prime factor of \(number) is \(myFactor.findFactors(number: number))")


// Project Euler 4

var result : Int = 0
func findPalindromeNumber() {
    for no1 in stride (from: 999, to: 100, by: -1){
        for no2 in stride(from: 999, to: 100, by: -1) {
            
            let no = no1 * no2
            let noInStr = String(no)
            let reverseNoInStr = String(noInStr.reversed())
            
            if (noInStr == reverseNoInStr) {
                if (result < no) {
                    result = no
                    break
                }
            }
        }
        
        
    }
    
    print("Question 4: The largest palindrome number is \(result)")
}


findPalindromeNumber()

// Project Euler 5

var total = 1
func gcd(_ num1: Int, _ num2: Int) -> Int {
    let r = num1 % num2
    
    if r != 0 {
        return gcd(num2, r)
        
    } else {
        return num2
    }
    
}

for num2 in 1...20 {
    total = (total * num2) / gcd(total, num2)
}
print("Question 5: \(total)")







