//
//  ViewController.swift
//  GuidedProject_Light
//
//  Created by Susan Murthy on 2/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    //Fields
    @IBOutlet var lightButton: UIButton!
    var lightOn: Bool = true
    var hintUsed: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Method
    fileprivate func updateBackground() {
        if !hintUsed {
            lightButton.setTitle("", for: .normal)
        }
        if lightOn {
            view.backgroundColor = .white
            // lightButton.setTitle("Dark", for: .normal)
            // lightButton.setTitleColor(.black, for: .normal)
        } else {
            view.backgroundColor = .black
            // lightButton.setTitle("Light", for: .normal)
            // lightButton.setTitleColor(.white, for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateBackground()
    }
    

}

