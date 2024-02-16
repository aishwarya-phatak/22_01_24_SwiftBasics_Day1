//
//  BitcodeHomeViewController.swift
//  22_01_24_SwiftBasics_Day1
//
//  Created by Vishal Jagtap on 15/02/24.
//

import UIKit

class BitcodeHomeViewController: UIViewController {
    
    var nameLabel : UILabel = UILabel()
    var usernameTextField : UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad of BVC called")
        createUIThroughCode()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear of BVC Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear of BVC called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear of BVC called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear of BVC called")
    }
    
    func createUIThroughCode(){
        
        let rectFrame = CGRect(x: 50, y: 150, width: 200, height: 50)
        nameLabel = UILabel(frame: rectFrame)
        nameLabel.backgroundColor = .lightGray
        nameLabel.textColor = UIColor(cgColor: CGColor(red: 100.00, green: 100.00, blue: 100.00, alpha: 5.0))
        nameLabel.text = "Welocme to Bitcode"
        self.view.addSubview(nameLabel)
        
        let rectFortextField = CGRect(x: 50, y: 250, width: 200, height: 50)
        usernameTextField = UITextField(frame: rectFortextField)
        usernameTextField.backgroundColor = UIColor.cyan
        usernameTextField.textColor = .black
        self.view.addSubview(usernameTextField)
        
        let rectForButton = CGRect(x: 100, y: 350, width: 100, height: 50)
        let btn = UIButton(frame: rectForButton)
        btn.backgroundColor = .lightGray
        btn.setTitle("Click", for: .normal)
        btn.addTarget(self, action: #selector(btnClickAction), for: .touchUpInside)
        self.view.addSubview(btn)
        
        //self.view.frame.height        -- view height
        //self.view.frame.width         -- view width
    }
    
    //objective c method
    @objc func btnClickAction(){
        let extractedNameFromTF = usernameTextField.text
        self.nameLabel.text = "Welcome To" + extractedNameFromTF!
        
        let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
}
