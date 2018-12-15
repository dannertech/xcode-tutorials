//
//  CircularTableView.swift
//  UIControls
//
//  Created by Diamonique Danner on 4/5/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

@IBDesignable
class CircularTableView: UIView {
    
    var backgroundLayer: CAShapeLayer!
    @IBInspectable var backgroundLayerColor: UIColor? = UIColor.gray
    @IBInspectable var lineWidth: CGFloat = 1.0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setBackgroundLayer()
    }

    func setBackgroundLayer(){
        if backgroundLayer == nil {
            backgroundLayer = CAShapeLayer()
            layer.addSublayer(backgroundLayer)
            let rect = CGRectInset(bounds,lineWidth/2.0,lineWidth/2.0)
            let path = UIBezierPath(ovalInRect: rect)
        }
        
        backgroundLayer.frames = layer.bounds
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
