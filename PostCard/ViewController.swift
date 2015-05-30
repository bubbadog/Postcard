//
//  ViewController.swift
//  PostCard
//
//  Created by Justin Karbowski on 5/26/15.
//  Copyright (c) 2015 JMK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = "Message: " + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = "To: " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""  // empties entry field and placeholder text re-appears        enterMessageTextField.resignFirstResponder() // removes kepyboard after click mailButton
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
    
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

