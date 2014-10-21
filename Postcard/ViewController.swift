//
//  ViewController.swift
//  Postcard
//
//  Created by Martijn Matena on 21-10-14.
//  Copyright (c) 2014 Martijn Matena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
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
        messageLabel.hidden = false //Label weer zichtbaar maken
        messageLabel.text = enterMessageTextField.text  //Label gelijk maken aan ingevoerde tekst
        messageLabel.textColor = UIColor.redColor() //Tekstkleur van het label rood maken
        
        enterMessageTextField.text = "" //Message veld leeg maken, nadat er iets is ingevuld
        enterMessageTextField.resignFirstResponder() //keyboard weghalen, nadat je iets hebt ingetypt
    
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal) //Title van de button aanpassen, zodra je er op hebt geklikt
        
    }
}

