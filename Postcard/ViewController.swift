//
//  ViewController.swift
//  Postcard
//
//  Created by Russell Warner on 10/4/14.
//  Copyright (c) 2014 Troped. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var messageSignature: UILabel!
    
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

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageSignature.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.greenColor()
        messageSignature.text = enterNameTextField.text
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        sender.backgroundColor = UIColor.grayColor()
        sendMailButton.setTitle("Postcard Sent", forState: UIControlState.Normal)
    }

}

