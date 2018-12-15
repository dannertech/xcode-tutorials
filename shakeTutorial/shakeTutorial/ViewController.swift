//
//  ViewController.swift
//  shakeTutorial
//
//  Created by Diamonique Danner on 3/30/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var password: ShakingTextField!
    
    @IBOutlet var avatarImageView: UIImageView!
    
    @IBAction func okButton(_ sender: Any) {
        if password.text == "password" {
            password.shake()
        }
    }
    
    func showAnimation() {
        if self.viewIfLoaded?.window != nil {
            addPulse(image: avatarImageView)
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
       // avatarImageView.isUserInteractionEnabled = true
       // let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
      //  tapGestureRecognizer.numberOfTapsRequired = 1
     //   avatarImageView.addGestureRecognizer(tapGestureRecognizer)
    
        password.delegate = self
        
        
        
    }
    
    func addPulse(image: UIImageView) {
        let pulse = Pulsing(numberOfPulses: Float(CGFloat.infinity), radius: 110, position: image.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.blue.cgColor
        self.view.layer.insertSublayer(pulse, below: image.layer)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.size.height / 2
        self.avatarImageView.clipsToBounds = true
        self.avatarImageView.layer.borderColor = UIColor.white.cgColor
        self.avatarImageView.layer.borderWidth = 2.0
        
    }
  
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

