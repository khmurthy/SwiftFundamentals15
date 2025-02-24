/*:
## Exercise - Control Transfer Statements
 
 Create a for-in loop that will loop through `alphabet`. Inside the loop, print every other letter by continuing to the next iteration if you are on a letter you do not wish to print. (Hint: You can use the `isMultiple(of:)` method on `Int` to only print even indexed characters).
 */
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for x in 0..<alphabet.count {
    if x.isMultiple(of: 2) {
        print(alphabet[alphabet.index(alphabet.startIndex, offsetBy: x)])
    }
}
//:  Create a `[String: String]` dictionary where the keys are names of states and the values are their capitals. Include at least three key/value pairs in your collection, with one of them being your home state. Now loop through this dictionary again, printing out the keys and values in a sentence, but add an if statement that will check if the current iteration is your home state. If it is, print("I found my home!") and break out of the loop.
var capitals: [String: String] = ["North Carolina": "Raleigh", "Texas": "Austin", "Massachusetts": "Boston"]

for capital in capitals {
    print("The capital of \(capital.key) is \(capital.value).")
    if capital.key == "North Carolina" {
        print("I found my home!")
        break
    }
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Finding Movements](@next)
 */
