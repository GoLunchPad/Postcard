//
//  ViewController.swift
//  Postcard
//
//  Created by jon  emas on 5/11/17.
//  Copyright © 2017 EMAS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        nameLabel.isHidden = false
        messageLabel.isHidden = false
        
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        
        nameLabel.textColor = UIColor.red
        messageLabel.textColor = UIColor.red
        
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", for: UIControlState.normal)
    }

}

