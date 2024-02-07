//
//  ViewController.swift
//  22_01_24_SwiftBasics_Day1
//
//  Created by Vishal Jagtap on 05/02/24.
//

import UIKit

class ViewController: UIViewController {

    var number : Int? = 10
    var colourDictionary = ["1" : "Green",
                            "2" : "Blue",
                            "3" : "Yellow"
                            ]
    var name : String? = "Krishna"
    var floatNumber : Float = 100.0
    let technology = "iOS"
    var address = """
    Bitcode,
    Karve Road,
    Erandwane,
    Pune
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(colourDictionary)
        checkKey(key: "2")
        
        //4. if let statement -->
        if let num1 = number {
            print("Value is : \(num1)")
        } else {
            print("Nil value found")
        }
        
        //3. traditional if-else -->  step 1. checking if nil 2. unwrap if not nil
        if name != nil{
            print(name!)
        } else {
            print("Name is having nil value")
        }
        
        print(number!)          //1. force unwrapping
        let value = number ?? 19
            print(value)        //2. nil coalescing
        name = "Ronak"
        print("name is : \(name)")
//        technology = "java"   //immutable
        print(address)
    }
    
    func checkKey(key : String){
        guard let value = colourDictionary[key] else {
            print("Nil value / No value found")
            return
        }
        
        print(value)
    }
}
