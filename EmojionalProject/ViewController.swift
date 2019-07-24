//
//  ViewController.swift
//  EmojionalProj
//
//  Created by Rithi Vaithyanathan on 7/22/19.
//  Copyright © 2019 Rithi Vaithyanathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let emojis = ["☺️": "good", "😧": "bad"]
    let customMessages = [
        "good": ["you got this", "its a beautiful day","yay"],
        "bad": ["dont be scared", "these things happen","yikes"]
    ]
    
    @IBAction func showMessage(sender: UIButton) {
        
        // access the information from the send UIButton
        // so we know which emoji button was tapped
        
        // set up the alert using `alertController`
        
        // add an action to the alert so that the user
        // can go back to app when done reading it
        
        // present the alert
        let selectedEmotion = sender.titleLabel?.text
        let randomNum = Int(arc4random_uniform(3))
        let emojiMessage = customMessages[emojis[selectedSign!]!]?[Int(randomNum)]
        let alertController = UIAlertController(title: emojis[selectedSign!], message: emojiMessage, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}


