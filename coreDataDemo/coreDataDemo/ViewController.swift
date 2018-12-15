//
//  ViewController.swift
//  coreDataDemo
//
//  Created by Diamonique Danner on 5/26/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
   
    var usersArray: [(String,String)] = []
    var passwordUserCombo: (String, String) = ("","")
    
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var usernameField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        for users in usersArray {
            if usernameField.text == users.0 && passwordField.text == users.1 {
                performSegue(withIdentifier: "successfullLogin", sender: self)
            } else {
            performSegue(withIdentifier: "failedLogin", sender: self)
        }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue("kerrington", forKey: "username")
        newUser.setValue("myPass", forKey: "password")
        
    
        
      
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
            do {
                
                let results = try context.fetch(request)
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        if let usernameText = result.value(forKey: "username") as? String {
                            let username = usernameText
                            if let passwordText = result.value(forKey: "password") as? String {
                                let password = passwordText
                                passwordUserCombo = (username, password)
                                usersArray.append(passwordUserCombo)
                            }
                        }
                    }
                    
                } else {
                    print("No results")
                }
            } catch {
                print("Couldn't fetch results")
            }
            
            
        }
      
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

