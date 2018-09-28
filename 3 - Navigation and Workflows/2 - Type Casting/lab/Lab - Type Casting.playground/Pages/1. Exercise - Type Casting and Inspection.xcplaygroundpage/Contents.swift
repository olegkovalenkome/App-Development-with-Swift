/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */

var collaction: [Any] = [4.5, 7.2, 4, "Hello", true, false]
collaction[0]
/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */

for item in collaction {
    if ((item as? Int) != nil) {
        print("The integer has a value of \(item)")
    }
}

for item in collaction {
    if ((item as? Double) != nil) {
        print("The double has a value of \(item)")
    }
}

for item in collaction {
    if ((item as? Bool) != nil) {
        print("The boolean has a value of \(item)")
    }
}

for item in collaction {
    if ((item as? String) != nil) {
        print("The string has a value of \(item)")
    }
}
/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */

var dictionary: [String: Any] = ["One": 4.5, "Two": "two", "Three": false, "Four": 10]

for key in dictionary.keys {
    if (dictionary[key] as? Double) != nil {
        print(dictionary[key] as! Double)
    } else if (dictionary[key] as? String) != nil {
        print(dictionary[key] as! String)
    } else if (dictionary[key] as? Bool) != nil {
        print(dictionary[key] as! Bool)
    }
}
/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */

var total = Double()

for key in dictionary.keys {
    if (dictionary[key] as? Double) != nil {
        total += dictionary[key] as! Double
    } else if (dictionary[key] as? String) != nil {
        total += 1.0
    } else if (dictionary[key] as? Bool) != nil {
        if dictionary[key] as! Bool == true {
           total += 2.0
        } else {
            total += 3.0
        }
    }
}

print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */

var total2 = Double()

for key in dictionary.keys {
    if (dictionary[key] as? Double) != nil {
        total2 += dictionary[key] as! Double
    } else if (dictionary[key] as? String) != nil {
        if (dictionary[key] as? Int) != nil {
            total2 += Double(dictionary[key] as! Int)
        }
    }  else if (dictionary[key] as? Int) != nil {
       total2 += Double(dictionary[key] as! Int)
    }
}

print(total2)
//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
