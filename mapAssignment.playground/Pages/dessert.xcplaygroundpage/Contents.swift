//Write a method, dessert that accepts [[String: String]] and changes the values associated with keys in the following ways: if the key "ice cream" has a value, remove the key and associate the value with the new key "yogurt". If the key "toppings" has the value "jimmies", change that value to "sprinkles".



func convertDictionary(input: [String: String]) -> [String: String] {
    var newInput = input
    if let keyForIceCream = newInput.removeValue(forKey: "ice cream") {
        newInput["yogurt"] = keyForIceCream
    }
        
    if let toppingsValue = newInput["toppings"], toppingsValue == "jimmies" {
        newInput["toppings"] = "sprinkles"
    }
    
    return newInput
}





func dessert(input: [[String: String]]) -> [[String: String]] {
     return input.map(convertDictionary)
}

    
    
    
    
    
    
dessert(input: [["ice cream": "cherry"], ["toppings": "jimmies"]])
dessert(input: [["soup": "oysters"]])











//[[“ice cream": "cherry”]] -> [[“yogurt": "cherry"]]

//[[“toppings": "jimmies", "ice cream": "cherry”]] -> [["toppings": "sprinkles", "yogurt": "cherry”]]

//[[“yogurt": "strawberry”]] ->
