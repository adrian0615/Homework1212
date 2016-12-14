//Write a function which takes in a string and returns a “-“ separated list of numbers where each number represents the place of the given character in the english alphabet. input will consist only of lower case characters.

//

let alphabet: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//

var dictionary: [Character: Int] = [:]
for (number, letter) in alphabet.enumerated() {
    dictionary[letter] = number
}

dictionary.description

//take a dictionary key and return it's value in a string

//func zeroNoPunc(input: String) -> [String] {
//    let chars = input.characters
 //       if chars.contains(alphabet.description
//    }
//}




