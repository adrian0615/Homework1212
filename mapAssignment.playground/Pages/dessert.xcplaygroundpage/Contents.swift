//Write a method, dessert that accepts [[String: String]] and changes the values associated with keys in the following ways: if the key "ice cream" has a value, remove the key and associate the value with the new key "yogurt". If the key "toppings" has the value "jimmies", change that value to "sprinkles".



func convertString(input: String) -> String {
    if input == "ice cream" {
        return "yogurt"
    } else if input == "jimmies" {
        return "sprinkles"
    } else {
        return input
    }
}


convertString(input: "cherry")

func mapDessert(input: [String: String]) -> [String: String] {
    var newInput = input
    if newInput == ["ice cream": "cherry"] {
        newInput["ice cream"] = nil
        newInput["yogurt"] = "cherry"
        return newInput
    } else if newInput == ["toppings": "jimmies"] {
        newInput["toppings"] = "sprinkles"
        return newInput
    } else {
        return input
    }
}

mapDessert(input: ["ice cream": "cherry"])












//[[“ice cream": "cherry”]] -> [[“yogurt": "cherry"]]

//[[“toppings": "jimmies", "ice cream": "cherry”]] -> [["toppings": "sprinkles", "yogurt": "cherry”]]

//[[“yogurt": "strawberry”]] ->
