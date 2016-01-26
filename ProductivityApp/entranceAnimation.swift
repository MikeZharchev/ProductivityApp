//
//  entranceAnimation.swift
//  ProductivityApp
//
//  Created by Mikhail Zharchev on 26/01/16.
//  Copyright © 2016 Mikhail Zharchev. All rights reserved.
//

import Foundation
import UIKit

func entranceAnimation (view: UIView, duration: Double, delay: Double) {
    
    
    let shift: CGFloat = 50
    view.center.y -= shift
    view.layer.opacity = 0
    
    UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: 3, initialSpringVelocity: 3, options: .CurveEaseIn, animations: ({
        
        view.center.y -= shift
        view.layer.opacity = 1
        
        
    }), completion: nil)
    
    
}
