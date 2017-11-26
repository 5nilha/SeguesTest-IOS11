//
//  SecondViewController.swift
//  SeguesTest
//
//  Created by Fabio Quintanilha on 11/25/17.
//  Copyright © 2017 Fabio Quintanilha. All rights reserved.
//

import UIKit

// To pass data back to the previous screen we should use delegates and protocol
protocol CanReceive {
    
    func dataReceived(data : String)
}

class SecondViewController: UIViewController {

    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClicked(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        
        dismiss(animated: true, completion: nil)
        
    }

}
