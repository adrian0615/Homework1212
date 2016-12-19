//Note that rot13Lossy preserves the 1 passed into it. This will lead to problems when converting back from the cypher. write a new version rot13 which will change each digit of any number into a corresponding upper case character. I am 1337 -> 8- -0-12- -A-C-C-G
let letters: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var rot0Lookup: [Character: Int] = [:]
for (number, letter) in letters.enumerated() {
    rot0Lookup[letter] = number
}

func numToString(_ number: Int?) -> String {
    return "\(number)"
}

numToString(3)


func charToNumber(character: Character) -> Int? {
    for (char, number) in rot0Lookup {
        if  char == character {
            return number + 13
        }
    }
    return nil
    
}

let num: Int



func numToChar(num: Int) -> Character? {
    for (char, number) in rot0Lookup {
        if  number == num {
            return char
        }
    }
    return nil
    
}

func charToRot0String(character: Character) -> String {
    let numbers: [Character : String] = ["1": "A", "2": "B", "3": "C", "4": "D", "5": "E", "6": "F", "7": "G", "8": "H", "9": "I"]
    if numbers[character] == nil {
        return String(character)
    } else {
    if let converted = charToNumber(character: character) {
        return String(describing: converted)
    } else if numbers[character] != nil {
        let x = numbers[character]
        return x!
    }
}

charToNumber(character: "d")


func rot13Pt2(input: String) -> String {
    let lower = input.lowercased()
    let mapped = lower.characters.map(charToRot0String)
    let together = mapped.joined(separator: "-")
    return together
}



rot13Pt2(input: "H1a3W!")


rot13Pt2(input: "candy")

