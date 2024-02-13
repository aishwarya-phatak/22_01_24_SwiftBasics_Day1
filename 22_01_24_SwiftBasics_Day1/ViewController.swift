//
//  ViewController.swift
//  22_01_24_SwiftBasics_Day1
//
//  Created by Vishal Jagtap on 05/02/24.
//

import UIKit

class ViewController: UIViewController {

    var number : Int? = 10
    var numbers : [Int] = [Int]()       //Defining an empty array
    var numbers1 : [Int] = []           //Defining an empty array
    
    //array of colours
    var colors : [String] = ["Blue","Green","Red","Yellow","Purple","Pink"]  //array of strings
    var arr : [Any] = ["A",10.23,100.54,"Krishna", 23]                 //heterogenous array -- Any
    
    //dictionary
    var colourDictionary : [String : String] = ["1" : "Green",
                            "2" : "Blue",
                            "3" : "Yellow"
                            ]
    
    var studentDictionary : [Int : String] = [1 : "Krishna",
                                              2 : "Aditya",
                                              3 : "Dipali"]
    
    var bookData : [String : Any] = ["bookName" : "Before the coffee cold",
                                     "bookPrice" : 200.06,
                                     "bookQnt": 10,
                                     "authorName" : "taz"
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
    var result : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        switchImp()
        conditionalConstructs()
        structureBasics1()
        structureBasics2()
        structureBasics()
        //forEach --> Method
        forEachMethod()
        
        result = addition(a: 10, b: 30)
        print(result)
        
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
    
    func forEachMethod(){
        colors.forEach { eachColour in
            print(eachColour)
        }
    }
    
    func forLoop(){
        for i in stride(from: 10, to: 40, by: 2){
            print(i * 10)
        }
    }
    
    func checkKey(key : String){
        guard let value = colourDictionary[key] else {
            print("Nil value / No value found")
            return
        }
        
        print(value)
    }
    
    func addition(a : Int, b : Int) -> Int{
        return a + b
    }
    
    func structureBasics(){
        var s1 = Student(name: "Krishna", rollNumber: 10)
        print("s1.name -- \(s1.name) ----- s1.roll -- \(s1.rollNumber)")
    }
    
    
    func structureBasics1(){
        var bike2 = Bike(color: "Blue")
        var bike3 = bike2
        print(bike2.color)
        print(bike3.color)
        bike2.color = "White"
        print(bike2.color) //white
        print(bike3.color) //blue
    }
    
    func structureBasics2(){
        var bike4 = Bike1(color: "Blue")
        var bike5 = bike4
        print(bike4.color)
        print(bike5.color)
        bike4.color = "White"
        print(bike4.color) //white
        print(bike5.color) //white
    }
    
    func conditionalConstructs(){
        var number = 12
        if number < 20 {
            print("Number is less than 20")
        } else if number == 20 {
            print("Number is equals to 20")
        } else {
            print("Number greater than 20")
        }
    }
    
    func switchImp(){
        //enumeration
        enum colours{
            case green, blue, red, orange
        }
        
        let selectedColour = colours.blue

        switch selectedColour{
            case .blue:
                print("Blue case matched")
            case .red :
                print("Red case matched")
            case .green :
                print("Green case matched")
            case .orange :
                print("Orange case matched")
            default :
                print("Default case matched")
        }
        
        let number = 100
        switch number{
            case 1...200:
                print("The number is in 1 to 200 range")
            case 201..<300:
                print("The number is in 201 to 299")
            default:
                print("The number is not it the said range")
        }
            
//        let character = "A"
//        switch character{
//        case "A" :
//            print("Case A matched")
//        case "B" :
//            print("Case B Matched")
//        case "C" :
//            print("Case C Matched")
//        default:
//            print("Case default matched")
//        }
    }
    
    func objectTest(obj : AnyObject){
        print("obj of type AnyObject")
    }
}
