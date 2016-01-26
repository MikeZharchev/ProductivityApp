//
//  slideFromTheRight.swift
//  ProductivityApp
//
//  Created by Mikhail Zharchev on 26/01/16.
//  Copyright © 2016 Mikhail Zharchev. All rights reserved.
//

import Foundation
import UIKit

func slideFromTheRight(view: UIView, duration: Double, delay: Double) {
    
    view.layer.opacity = 0
    view.center.x += 100
    
    
    UIView.animateWithDuration(duration, delay: delay, usingSpringWithDamping: 1, initialSpringVelocity: 3, options: .CurveEaseIn, animations: ({
        
        view.layer.opacity = 1
        view.center.x -= 100
        
    }), completion: nil)
    
}



