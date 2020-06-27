//
//  ViewController.swift
//  3.6 Lab Login
//
//  Created by Sasha Evtushenko on 5/10/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func forgotUsernameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toLanding", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toLanding", sender: forgotPasswordButton)
    }
    
}

