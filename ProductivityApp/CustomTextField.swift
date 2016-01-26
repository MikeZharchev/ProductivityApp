//
//  CustomTextField.swift
//  ProductivityApp
//
//  Created by Mikhail Zharchev on 26/01/16.
//  Copyright © 2016 Mikhail Zharchev. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    var leftTextMargin : CGFloat = 0.0
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        var newBounds = bounds
        newBounds.origin.x += leftTextMargin
        return newBounds
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        var newBounds = bounds
        newBounds.origin.x += leftTextMargin
        return newBounds
    }


}
