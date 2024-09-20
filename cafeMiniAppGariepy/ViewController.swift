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
    var userCart: [String: Double] = [:]
    
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var textView1: UITextView!
    
    @IBOutlet weak var itemTextField1: UITextField!
    
    @IBOutlet weak var itemTextField2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after
        //loading the view.
        
        for i in 0..<names.count {
            textView1.text += (names[i] + " is a price of " + String(price[i]) + "\n")
            
        }
        
        
        
        
        
       
        
        
        
        
        
        func menuButton(_ sender: UIButton) {
            
           
            
            
            
           
            
            
            
            
            
            
            
            
            
            
            
            
        }
        
        
        
        

        
        
        
    }
    @IBAction func submitButton(_ sender: UIButton) {
      
        addToCart(item: itemTextField1.text!, quantity: Int(itemTextField2.text!)!)
       
        
        }
    
    
    func addToCart(item: String, quantity: Int) {
        // Check if the item exists in the menu
        if names.firstIndex(of: item) != nil {
            // Check if the item is already in the cart
            if userCart[item] != nil {
                label1.text = "Error: Item is already in the cart."
            } else {
                // Add the item to the cart
                userCart[item] = Double(quantity)
                label1.text = "\(quantity) \(item)(s) added to your cart."
            }
        } else {
            label1.text = "Error: Invalid item. Please select a valid food item."
        }
    }
    
    @IBAction func cartButton(_ sender: UIButton) {
        var totalPrice: Double = 0
        print("Your cart:")
        textView1.text = ""
        for (item, quantity) in userCart {
            if let index = names.firstIndex(of: item) {
                let itemPrice = price[index] * Double(quantity)
                textView1.text += "\(quantity) x \(item) = $\(itemPrice) \n"
                totalPrice += itemPrice
                
            }
        }
        textView1.text += "Total Price: $\(totalPrice)"
    }
    
    @IBAction func menuButton(_ sender: UIButton) {
        textView1.text = ""
        for i in 0..<names.count {
            textView1.text += (names[i] + " is a price of " + String(price[i]) + "\n")
            
            
        }
    }
    
    
    
    
    
}
