//
//  ViewController.swift
//  menuTutorial
//
//  Created by Diamonique Danner on 3/31/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    @IBAction func organize(_ sender: Any) {
        if (menuShowing) {
            leadingConstraint.constant = -140
        } else {
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: { self.view.layoutIfNeeded()
                
            })
        }
        menuShowing = !menuShowing
    }
    

    @IBOutlet var menu: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menu.layer.shadowOpacity = 1
        menu.layer.shadowRadius = 3
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

