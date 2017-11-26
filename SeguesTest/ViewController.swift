//
//  ViewController.swift
//  SeguesTest
//
//  Created by Fabio Quintanilha on 11/25/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    @IBAction func ButtonClicked(_ sender: Any) {
        
        
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
        textField.text = ""
    }
    
    //Sending data from a view controller to another
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            
            /*declaring the destinationVC as the SecondViewController
              allow the access to the properties passed in the SecondViewController */
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self
            
        }
    }
    
    //Function inherented from the CanReceive protocol
    func dataReceived(data: String) {
        label.text = data
    }
    
}

