//
//  Button.swift
//  IBInspectablePractice
//
//  Created by Diamonique Danner on 4/25/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit
@IBDesignable

open class Button: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 2.0 {
        didSet{
            self.layer.cornerRadius = self.cornerRadius
        }
    }
    
    
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    public override init(frame: CGRect) {
        super .init(frame: frame)
        setTitle("myTitle", for: .normal)
        setTitleColor(UIColor.blue, for: .normal)
        
    }
    
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
