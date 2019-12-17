//
//  ViewController.swift
//  StudyProject
//
//  Created by Pavel on 12/17/19.
//  Copyright © 2019 Pavel Birylav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    var message = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        guard let count = sender.text?.count else {
            return
        }
        if count >= 3 && count <= 32 {
            for character in sender.text! {
                if (character >= "0" && character <= "9")
                || (character >= "a" && character <= "z")
                || (character >= "A" && character <= "Z") {
                    button.isEnabled = true
                }
                else {
                    button.isEnabled = false
                    return
                }
            }
        } else {
            button.isEnabled = false
        }
    }
    
    
    @IBAction func showAlert() {
        
        let message: String
        let title: String
        
        title = "It's correct"
        message = "Yor data is:\n\(textField.text!)"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: .none)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

