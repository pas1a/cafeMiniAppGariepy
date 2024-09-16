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
    var keySet = Set<String>()


    @IBOutlet weak var label1: UILabel!
    
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

    @IBAction func submitButton(_ sender: UIButton) {
        // make a boolean that lets the program run if it is true and to fail if it is false!!
       
        
        cart[itemTextField.text!] = Double(textField2.text!)
    }
    
    func check1(){
        
        for key in cart.keys {
            if keySet.contains(key) {
                label1.text = "Error: Duplicate key found - \(key)"
            } else {
                keySet.insert(key)
            }
        }
    }
    func check2(){
        var i = 0
        while i < names.count{
            if itemTextField.text == names[i]{
                i += 999
                label1.text = "Error: Unknown Item"
                
            }else{
                print("yay")
            }
            
        }
                
            
        
    }
    
   

}

