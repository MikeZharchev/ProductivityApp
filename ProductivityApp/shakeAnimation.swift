//
//  shakeAnimation.swift
//  ProductivityApp
//
//  Created by Mikhail Zharchev on 26/01/16.
//  Copyright © 2016 Mikhail Zharchev. All rights reserved.
//

import Foundation
import UIKit

func shakeAnimation(view: UIView) {
    let shakeAnimation = CABasicAnimation(keyPath: "position")
    shakeAnimation.duration = 0.05
    shakeAnimation.repeatCount = 3
    shakeAnimation.autoreverses = true
    shakeAnimation.fromValue = NSValue(CGPoint: CGPointMake(view.center.x - 2.0, view.center.y))
    shakeAnimation.toValue = NSValue(CGPoint: CGPointMake(view.center.x + 2.0, view.center.y))
    
    view.layer.addAnimation(shakeAnimation, forKey: "position")
}



