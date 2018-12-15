//
//  loginViewController.swift
//  coreDataDemo
//
//  Created by Diamonique Danner on 5/26/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit
import CoreData

class loginViewController: UIViewController {

    @IBOutlet var usernameField: UITextField!
    
    
    @IBAction func updateUsername(_ sender: Any) {
        


        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        

        do {
            let results = try context.fetch(request)
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                        
                       result.setValue(usernameField.text, forKey: "username")
                        
                        do {
                            try  context.save()
                        } catch {
                            print("Could not save")
                        }
                    
                }
            }
            print("No results retrieved")
        } catch {
            print("Couldn't fetch results")
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue("kerrington", forKey: "username")
        newUser.setValue("myPass", forKey: "password")
        
        
     

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
