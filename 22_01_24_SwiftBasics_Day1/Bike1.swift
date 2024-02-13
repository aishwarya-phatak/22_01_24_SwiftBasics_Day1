//
//  Bike1.swift
//  22_01_24_SwiftBasics_Day1
//
//  Created by Vishal Jagtap on 12/02/24.
//

import Foundation
final class Bike1{
    var color : String
    init(color: String) {
        print("Init block of Bike1 called")
        self.color = color
    }
}

//if init block private -- you cannot access it for object creation
//if a class is final -  it restricts inheritance
//multiple inheritance is not supported in swift
//
//class SpecificBike :{
//
//}
