//
//  ViewController.swift
//  cafeMiniAppGariepy
//
//  Created by JOHN GARIEPY on 9/13/24.
//

import UIKit

class ViewController: UIViewController {
var money = 500
    var names: [String] =  ["Coffee","Hot Dog","Fruit Snacks","Burger","Eggs"]
    var price: [Double] = [2.99,5.99,4.99,12.99,4.99]
    var cart: [String: Double] = [:]

    
    @IBOutlet weak var textView1: UITextView!
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after 
        //loading the view.
        
        for i in 0..<names.count {
            textView1.text += (names[i] + " is a price of " + String(price[i]) + "\n")
            
        }
        
        
        
    }

   
        
    
   

}

