1. Strings and text

ex.1

var numb1 = 5
var numb2 = 10
let sum = numb1 + numb2

print("\(numb1) + \(numb2) = \(sum)")

ex.2

let name = "Gdansk University of Technology"
var name2 = ""

for character in name {
    if character == "n" {
       name2 = "\(name2)⭐️"
    }
    else {
       name2 = "\(name2)\(character)"
    }
   
}

print(name2)

or 

var name = "Gdansk University of Technology"

name = name.replacingOccurrences(of: "n", with: "⭐️")

print(name)

ex.3

var fullName = "Marek Brandt"
var fullNameReverted = ""

for char in fullName {
    fullNameReverted = "\(char)\(fullNameReverted)"
}

print(fullNameReverted)

or 

var fullName = "Marek Brandt"
fullName = String(fullName.reversed())
print(fullName)



2. Control Flow

ex.1

for _ in 1...11 {
    print("I will pass this course with best mark, because Swift is great!")
}

ex.2

let number = 5

for i in 1...number {
    print(i * i)
}


ex.3

let number = 4

for _ in 1...number {
    for _ in 1...number {
        print("@", terminator: "")
    }
    print()
}



3. Collection Types

3.1 Arrays

ex.1

var numbers = [5, 10, 20, 15, 50, 13]
print(numbers.max() ?? "not max")

ex.2

var numbers = [5, 10, 20, 15, 50, 13]
numbers.reverse()
print(numbers)

ex.3

var allNumbers = [10, 20, 10, 11, 13, 20, 10, 30]
let unique = Array(Set(allNumbers))
print(unique)

3.2 Sets

ex.1

var number = 10

var divisors = Set<Int>()

for i in 1...number {
    if number % i == 0{
        divisors.insert(i)
    }
}   

print(divisors.sorted())

3.3 Dictionaries

ex.1

var flights: [[String: String]] = [
    [
        "flightNumber" : "AA8025",
        "destination" : "Copenhagen"
    ],
    [
        "flightNumber" : "BA1442",
        "destination" : "New York"
    ],
    [
        "flightNumber" : "BD6741",
        "destination" : "Barcelona"
    ]
]

var flightNumbers = Array<String>()

for flight in flights {
    for(key, val) in flight {
        if key == "flightNumber" {
            flightNumbers.append(val)
        }
    }
}

print(flightNumbers)

ex.2

var names = ["Hommer","Lisa","Bart"]

var fullName: [[String: String]] = []

for i in 0..<names.count {
    var dict : [String: String] = [:]
    
    dict["lastName"] = "Simpson"
    dict["firstName"] = names[i]

    fullName.append(dict)
}

print(fullName)




