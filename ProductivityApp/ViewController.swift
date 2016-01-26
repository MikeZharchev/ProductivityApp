//
//  ViewController.swift
//  ProductivityApp
//
//  Created by Mikhail Zharchev on 26/01/16.
//  Copyright © 2016 Mikhail Zharchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        entranceAnimation(logo, duration: 1, delay: 0.2)
        entranceAnimation(titleView, duration: 1, delay: 0.3)
        entranceAnimation(signUpButton, duration: 1, delay: 0.5)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        signUpButton.layer.cornerRadius = 4
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonTouched(sender: AnyObject) {
        
        performSegueWithIdentifier("toLogInSegue", sender: self)
        
    }

    @IBAction func signUpButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("signUpSegue", sender: self)
        
    }
}

