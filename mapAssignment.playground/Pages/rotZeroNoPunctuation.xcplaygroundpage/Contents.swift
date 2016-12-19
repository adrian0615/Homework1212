//Write a function which takes in a string and returns a “-“ separated list of numbers where each number represents the place of the given character in the english alphabet. input will consist only of lower case characters.

//

let letters: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

var rot0Lookup: [Character: Int] = [:]
for (number, letter) in letters.enumerated() {
    rot0Lookup[letter] = number
}

func numToString(_ number: Int) -> String {
    return "\(number)"
}

numToString(3)

    
func charToNumber(character: Character) -> Int {
    for (char, number) in rot0Lookup {
        if char == character {
            return number
        }
    }
    return 27
}
    
charToNumber(character: "d")
    

func rotZeroNoPunctuation(input: String) -> String {
    let nums = input.characters.map(charToNumber)
    let numString = nums.map(numToString)
    let together = numString.joined(separator: "-")
    return together
}




rotZeroNoPunctuation(input: "candy")


















