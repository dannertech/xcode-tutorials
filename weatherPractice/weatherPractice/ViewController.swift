//
//  ViewController.swift
//  weatherPractice
//
//  Created by Diamonique Danner on 6/6/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet var weatherDescription: UILabel!
    
    @IBOutlet var cityTextField: UITextField!
    
    
    @IBAction func okButton(_ sender: Any) {
        if let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=" + cityTextField.text!.replacingOccurrences(of: " ", with: "%20") + ",uk&appid=2161dba879e317e91dd1fa7e702fa1d5") {
        
            let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if error != nil {
                print(error)
            } else {
                if let urlContent = data {
                    do {
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        
                        if let description = ((jsonResult["weather"] as? NSArray)?[0] as? NSDictionary)?["description"] as? String {
                            
                            DispatchQueue.main.sync(execute: {
                              self.weatherDescription.text = description
                            })
                            
                        }
                    } catch {
                        print("JSON processing failed")
                    }
                }
            }
        }
        task.resume()
    } else {
    self.weatherDescription.text = "Coud not find that city"
    }
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

