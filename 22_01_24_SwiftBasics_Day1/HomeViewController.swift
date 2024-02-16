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
        print("viewDidload of HVC called")
        self.nameLabel.text = "Welcome To Bitcode!"
        
        self.nameLabel.backgroundColor = .lightGray
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear of HVC Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear of HVC called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear of HVC called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear of HVC called")
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
}
