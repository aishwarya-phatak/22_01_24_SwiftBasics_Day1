//
//  Student.swift
//  22_01_24_SwiftBasics_Day1
//
//  Created by Vishal Jagtap on 12/02/24.
//

import Foundation
struct Student{
    var name : String
    var rollNumber : Int
    
    init(name : String, rollNumber : Int){
        print("Init block of Student Structure is called")
        self.name = name
        self.rollNumber = rollNumber
    }
}
