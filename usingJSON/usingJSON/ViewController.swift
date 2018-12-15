//
//  ViewController.swift
//  usingJSON
//
//  Created by Diamonique Danner on 7/29/18.
//  Copyright © 2018 Danner Opp., LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func getSwiftyPerson(_ sender: Any) {
        DataService.shared.getUsers() { data in
            guard let swifty = SwiftyPerson(data: data) else { return }
            self.updateUI(name: swifty.name, company: swifty.company, location: swifty.location)
        }
        
    }
    @IBAction func getFreddyPerson(_ sender: Any) {
        DataService.shared.getUsers() { data in
            guard let freddy = FreddyPerson(data: data) else { return }
            self.updateUI(name: freddy.name, company: freddy.company, location: freddy.location)
        }
        
    
    }
    @IBAction func getGlossPerson(_ sender: Any) {
        DataService.shared.getUsers() { data in
            
        }
        
    }
    @IBOutlet var name: UILabel!
    
    @IBOutlet var location: UILabel!
    
    @IBOutlet var company: UILabel!
    
    @IBAction func clear(_ sender: Any) {
        updateUI(name: "", company: "", location: "")
    }
    
    func updateUI(name: String, company: String, location: String) {
        self.name.text = name
        self.location.text = location
        self.company.text = company
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

