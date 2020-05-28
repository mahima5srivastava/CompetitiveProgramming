func getPrimes(from start: Int = 2, to end: Int) -> [Int] {
    var primes: [Int] = [2]
    if end < 2 {
        return primes
    }
    for i in start...end {
        var isPrime = true
        for p in primes {
            if i % p == 0 {
                isPrime = false
                break
            }
        }
            if isPrime {

                primes.append(i)
            }
    }
    return primes
}

func isPrime(_ n: Int) -> Bool {
    guard n > 1 else {return false}
    if n == 2 {
        return true
    }
    let primes = getPrimes(to: Int(Double(n).squareRoot()))
    for p in primes {
        if n % p == 0 {
            return false
        }
    }
    return true
}

print(getPrimes(to: 10))
print(isPrime(0))
print(isPrime(1))
print(isPrime(2))
print(isPrime(5))