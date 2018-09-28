/*:
 ## App Exercise - A Functioning App
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var steps = 4857

func incrementSteps() -> Int {
    steps += 1
    return steps
}

print(incrementSteps())
print(incrementSteps())
print(incrementSteps())

/*:
 Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout. Remember, you can convert numbers using the appropriate Int or Double initializer.
 */
let goal = 10000
var tenPercentOfGoal = Double(goal) * 0.1
var fivtyPercentOfGoal = Double(goal) * 0.5
var ninetyPercentOfGoal = Double(goal) * 0.9

func progressUpdate(steps: Int) -> String {
    if steps < Int(tenPercentOfGoal) {
       //10%
        return "You're off to a good start."
    } else if steps < Int(fivtyPercentOfGoal) {
       //50%
        return "You're almost halfway there!"
    } else if steps < Int(ninetyPercentOfGoal) {
       //90%
        return "You're over halfway there!"
    } else {
       //100%
        return "You're almost there!"
    }
}

progressUpdate(steps: steps)

//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
