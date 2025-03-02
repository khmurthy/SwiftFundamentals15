//
//  ViewController.swift
//  Two Buttons
//
//  Created by Susan Murthy on 3/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var label: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        if let text = textField.text {
            label.text = text
        }
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
    
}

