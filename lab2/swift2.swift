Functions:
1.
func minValue(a: Int, b: Int) -> Int {
    if a >= b{
        return b
    }
    else {
        return a
    }
}

print(minValue(a: 3,b: 2))
print(minValue(a: 10,b: 18))
print(minValue(a: 100,b: 5))

2.
func last_digit(_ a: Int) -> Int {
    return a%10
}

print(last_digit(1213))

3.
func divides(_ a: Int, _ b: Int) -> Bool {
    if a % b == 0 {
        return true
    }
    else{
        return false
    }
}

func countDivisors(_ number: Int) -> Int {
    // starting with 1, cause number is always divided by itself
    var counter = 1
    let half: Int = number/2
    if half<1{
        return counter
    }
    for divisor in 1...half{
        if divides(number, divisor){
            counter += 1
        }
    }
    return counter
}

func isPrime(_ number: Int ) -> Bool {
    if countDivisors(number) == 2{
        return true
    }
    return false
}

print(divides(7, 3)) // false - 7 is not divisible by 3
print(divides(8, 4)) // true - 8 is divisible by 4

print(countDivisors(1)) // 1 - 1
print(countDivisors(10)) // 4 - 1, 2, 5 and 10
print(countDivisors(12)) // 6 - 1, 2, 3, 4, 6 and 12

print(isPrime(3)) // true
print(isPrime(8)) // false
print(isPrime(13)) // true






Closures
1.
func smartBart(_ n: Int, _ f: () -> ()) -> () {
    for i in 1...n{
        f()
    }
}

smartBart(5){print("I will pass this course with best mark, because Swift is great!")}

2.
let numbers = [10, 16, 18, 30, 38, 40, 44, 50]

let mult_of_four = numbers.filter{$0%4 == 0}
print(mult_of_four)

3.
let numbers = [10, 16, 18, 30, 38, 40, 44, 50]

let largest = numbers.reduce(-1000){max($0, $1)}
print(largest)

4.
var strings = ["Gdansk", "University", "of", "Technology"]
let output = strings.reduce(""){$0 + " " + $1}

print(output)

5.
let numbers = [1,2,3,4,5]
let result = numbers.filter{$0 % 2 == 1}.map{$0*$0}.reduce(0){$0+$1}
print(result)




Tuples
1.
func minmax(_ a: Int, _ b: Int ) -> (max: Int, min: Int) {
   var maxi = max(a,b)
   var mini = min(a,b)

   return (maxi, mini)
}
print(minmax(3,2))
print(minmax(12, 16))

2.
var stringsArray = ["gdansk", "university", "gdansk", "university", "university", "of", "technology", "technology", "gdansk", "gdansk"]

var stringsSet = Set(stringsArray)
var countedStrings: [(String, Int)] = []

for word in stringsSet {
    var counter = 0
    for word2 in stringsArray {
        if word == word2 {
            counter += 1
        }
    }
    countedStrings.append((word, counter))
}

print(countedStrings)

Enums
1.enum Day: Int{
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7

    func toDisplay() -> String {
        switch self {
        case .Monday:
            return "😖"
        case .Tuesday:
            return "😒"
        case .Wednesday:
            return "😛"
        case .Thursday:
            return "😉"
        case .Friday:
            return "😊"
        case .Saturday:
            return "🤣"
        case .Sunday:
            return "😬"
        default:
            fatalError("Unsupported")
        }
        
    }
}

let day = Day.Monday
print(day.toDisplay())



