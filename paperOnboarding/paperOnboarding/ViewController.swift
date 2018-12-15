//
//  ViewController.swift
//  paperOnboarding
//
//  Created by Diamonique Danner on 7/21/18.
//  Copyright © 2018 Danner Opp., LLC. All rights reserved.
//

import UIKit
import paper_onboarding



class ViewController: UIViewController {
    @IBOutlet var doneButton: UIButton!
    
    
    @IBOutlet var onboardingObj: OnboardingView!
    
    let userData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        onboardingObj.dataSource = self
        onboardingObj.delegate = self
    }
    @IBAction func doneButtonPressed(_ sender: Any) {
        userData.set(true, forKey: "demoCompleted")
        userData.synchronize()
        
    }
    
   

}

extension ViewController : PaperOnboardingDataSource, PaperOnboardingDelegate {
    
    //this function is for how many screens I want in the onboarding process
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    //this function is for what screen will show what content
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        
        let bg1 = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        let bg2 = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        let bg3 = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        let textColor = UIColor.white
    
        
        
        let titleFont = UIFont(name: "HelveticaNeue-Bold", size: 18)!
        let descFont = UIFont(name: "HelveticaNeue", size: 14)!
        
        return [OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "icecream"),title: "Ice Cream",description: "Ice Cream is awesome", pageIcon: #imageLiteral(resourceName: "icecreamscoops"),color: bg1, titleColor: UIColor.white,descriptionColor: UIColor.white,titleFont: titleFont,descriptionFont: descFont), OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "burger"), title: "Burgers", description: "Burgers are delicious", pageIcon: #imageLiteral(resourceName: "burgericon"), color: bg2, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descFont), OnboardingItemInfo(informationImage: #imageLiteral(resourceName: "frenchfries"), title: "French Fries", description: "French Fries", pageIcon: #imageLiteral(resourceName: "frenchfries"), color: bg3, titleColor: UIColor.white, descriptionColor: UIColor.white, titleFont: titleFont, descriptionFont: descFont)][index]
        
    }
    
    func onboardingDidTransitonToIndex(_ index : Int) {
        if index == 2 {
            doneButton.isHidden = false
        }
    }
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index != 2 {
            if doneButton.isHidden == false {
                doneButton.isHidden = true
            }
        }
    }
    func onboardingConfigurationItem(_: OnboardingContentViewItem, index _: Int) {
        
    }
    
}

