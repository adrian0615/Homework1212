//Write a function which takes a list of integers and returns a list of their cubes


let list = [1, 2, 3, 4]


func cubedNumber(to input: Int) -> Int {
    return input * input * input
}

func map(list: [Int], transform: (Int) -> Int) -> [Int] {
    var newList: [Int] = []
    for item in list {
        newList.append(transform(item))
        
    }
    return newList
}

func rubix(list: [Int]) -> [Int] {
    return map(list: list, transform: cubedNumber)
}


rubix(list: [1, 2, 3, 4])

func rubix2(list: [Int]) -> [Int] {
    return list.map { element in
        return element * element * element
    }
}

rubix2(list: list)
