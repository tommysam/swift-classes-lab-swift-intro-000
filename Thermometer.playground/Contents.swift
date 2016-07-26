/*: title
 
 # Classes & Properties
 
 This lab will give you the opportunity to experiment with Swift classes and properties. You will be tasked with creating a relatively simple class: A class that models an ordinary thermometer. As you work through the prompts in this lab, the functionality of your thermometer will grow, and you'll get to work with properties along the way.
 
 This lab includes tests in the form of `assert()` statements. When you initially open up this playground, you will see a number of errors. As you complete the tasks, the errors should disappear. When you have successfully completed the lab, you should see no errors at all.
 
 Let's get started!
 
 ## Question 1
 
 To start, define a class called `Thermometer`. This class should contain one property, `fahrenheit` (a `Double`), to hold the temperature represented by the thermometer. This property should be a _variable_. You should also create an initializer for this class that takes one parameter and assigns that parameter to the `fahrenheit` property.
 */
class Thermometer {
    var fahrenheit: Double
    var celsius: Double {
        get {
            return (fahrenheit - 32) * (5.0 / 9.0)
        }
        set {
            fahrenheit = newValue * (9.0 / 5.0) + 32
        }
    }
    var description: String {
        return "The current temperature is \(fahrenheit)°F (\(celsius)°C)"
    }

    init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
    }
}

/*: section2
 
 ## Question 2
 
 Good! Now, create a `Thermometer` instance that has an initial value of `88.0` for `fahrenheit`. This instance should be a _variable_. Call it `thermometer`.
 */
var thermometer = Thermometer(fahrenheit: 88.0)
assert(thermometer.fahrenheit == 88.0, "thermometer.fahrenheit is \(thermometer.fahrenheit)")

/*: section3
 
 ## Question 3
 
 Add a `celsius` property to the `Thermometer` class. This should be a _computed_ property that is based on the `fahrenheit` property. It should return the represented temperature in Celsius degrees. The temperature in Celsius can be found by subtracting 32 from the temperature in Fahrenheit and multiplying by 5/9. It is up to you to decide what data type `celsius` should be.
 
 You can make your modifications to the code you wrote for Question #1.
 */
assert(thermometer.celsius - 31.1 < 0.1, "thermometer.celsius is \(thermometer.celsius)")

/*: section4
 
 ## Question 4
 
 Perfect! Now, change the `fahrenheit` temperature of your `Thermometer` instance to 100.0.
 */
thermometer.fahrenheit = 100.0
assert(thermometer.fahrenheit == 100.0, "thermometer.fahrenheit is \(thermometer.fahrenheit)")
assert(thermometer.celsius - 37.7 < 0.1, "thermometer.celsius is \(thermometer.celsius)")

/*: section5
 
 ## Question 5
 
 Great! Now, modify the `celsius` property so it can also accept a value. This value should change the value of the `fahrenheit` property. To go from Celsius to Fahrenheit, multiply the temperature in Celsius degrees by 9/5 and add 32.
 
 You can modify the code you wrote for Question #1.
 
 ## Question 6
 
 Now set the `celsius` temperature of your `Thermometer` instance to 100.0
 */
thermometer.celsius = 100.0
assert(thermometer.celsius == 100.0, "thermometer.celsius is \(thermometer.celsius)")
assert(thermometer.fahrenheit == 212.0, "thermometer.fahrenheit is \(thermometer.fahrenheit)")

/*: section7
 
 ## Question 7
 
 Add another property to the class definition you created in Question #1. This property should be called `description`. It should return a string in the form: "The current temperature is <fahrenheit>°F (<celsius>°C)".
 */
assert(thermometer.description == "The current temperature is 212.0°F (100.0°C)",
       "thermometer.description is: \(thermometer.description)")
