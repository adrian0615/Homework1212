/*Write a function which takes in a string and returns a “-“ separated list of numbers where each number represents the place of the given character in the english alphabet. input will consist only of lower case, upper case characters and punctuation. Punctuation (anything other than lower case characters) should be left alone. You are not expected to preserve case.*/



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
            return number
        }
    }
    return nil

}

func charToRot0String(character: Character) -> String {
    if let converted = charToNumber(character: character) {
        return String(describing: converted)
    } else {
        return String(describing: character)
    }
}

charToNumber(character: "d")


func rotZero(input: String) -> String {
    let lower = input.lowercased()
    let mapped = lower.characters.map(charToRot0String)
    let together = mapped.joined(separator: "-")
    return together
}



rotZero(input: "H1a3W!")


rotZero(input: "candy")

