//
//  ViewController.swift
//  adPractice
//
//  Created by Diamonique Danner on 6/3/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

import GoogleMobileAds
import Firebase



   let kBannerAdUnitID = "ca-app-pub-3940256099942544/2934735716"


class ViewController: UIViewController {
    

    var interstitial : GADInterstitial!
    
    @IBOutlet weak var banner: GADBannerView!
    
    @IBOutlet var bannerView: GADBannerView!
    
    @IBAction func okButton(_ sender: Any) {
        if interstitial.isReady {
                    interstitial.present(fromRootViewController: self)
        } else {
            print("Interstitial is not ready")
        }

        
    }
    
   
    
    func loadAd(){
        //self.bannerView.adUnitID = kBannerAdUnitID
        self.bannerView.rootViewController = self
        //self.bannerView.load(GADRequest())
    }
  

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //loadAd()
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request = GADRequest()
        interstitial.load(request)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

