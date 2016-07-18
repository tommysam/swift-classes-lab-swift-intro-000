
//  ThermometerTests.swift

import Quick
import Nimble
@testable import ClassesFun

class ThermometerSpec: QuickSpec {
    
    override func spec() {
        
        describe("Thermometer") {
            
            let thermometer = Thermometer(fahrenheit: 50.0)
            
            describe("designated initializer") {
                
                it("sets the fahrenheit property") {
                    
                    expect(thermometer.fahrenheit).to(equal(50.0))
                    
                }
                
            }
            
            describe("fahrenheitToCelsius()") {
                
                it("Convers the current fahrenheit value and returns back a celcius value") {
                    
                    let expectedCelsius = 10.0  // (50.0 - 32) / 1.8
                    
                    let actualCelsius = thermometer.fahrenheitToCelsius()
                    
                    expect(actualCelsius).to(equal(expectedCelsius))
                    
                }
                
            }
            
        }
        
    }
    
}