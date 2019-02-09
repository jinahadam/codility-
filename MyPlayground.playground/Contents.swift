import UIKit

func isPrime(_ n: Int) -> Bool {
    let max = Int(sqrt(Double(n)))
    for j in Array(2..<max) {
        print(n % j)
        if n % j == 0  {
            return false
        }
    }
    return true
}


isPrime(35)
