//Write a function which takes a list of integers and returns a list of instances of an enum named Parity with two cases, even, and odd.

let list = [1, 2, 3, 4, 5, 6, 7, 3000]
enum Parity {
    case even
    case odd
    
}

func decide(number: Int) -> Parity {
    if number % 2 == 0 {
        return .even
    } else {
        return .odd
    }
}


func changeParity(list: [Int], transform: (Int) -> Parity) -> [Parity] {
    var newList: [Parity] = []
    for item in list {
        newList.append(transform(item))
    }
    return newList
}

func findParity(list: [Int]) -> [Parity] {
    return changeParity(list: list, transform: decide)
}


func parity2(list: [Int]) -> [Parity] {
    return list.map { element in
        if element % 2 == 0 {
            return Parity.even
        } else {
            return Parity.odd
        }
    }
}

parity2(list: list)





