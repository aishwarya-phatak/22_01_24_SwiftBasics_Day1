//
//  HomeViewController.swift
//  22_01_24_SwiftBasics_Day1
//
//  Created by Vishal Jagtap on 14/02/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = "Welcome To Bitcode!"
        
        self.nameLabel.backgroundColor = .lightGray
        
    }
}
