
//  Thermometer.swift



class Thermometer {
    
    var fahrenheit: Double
    
    init(fahrenheit: Double) {
        self.fahrenheit = fahrenheit
    }
    
    func fahrenheitToCelsius() -> Double {
        return (fahrenheit - 32) / 1.8
    }
    
}