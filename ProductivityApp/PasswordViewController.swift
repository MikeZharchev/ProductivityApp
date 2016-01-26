import UIKit

class PasswordViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var passwordTextField: CustomTextField!
  
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var formView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        passwordTextField.becomeFirstResponder()
        passwordTextField.layer.cornerRadius = 4
        passwordTextField.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.2).CGColor
        passwordTextField.layer.borderWidth = 1
        
        passwordTextField.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        passwordTextField.leftTextMargin = 10
        passwordTextField.setNeedsLayout()
        passwordTextField.layoutIfNeeded()
        
        nextButton.layer.cornerRadius = 4
        
        self.passwordTextField.delegate = self
        
        slideFromTheRight(formView, duration: 1, delay: 0)
   
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        nextButtonDidTouch(nextButton)
        return true
        
    }
    
    override func viewWillAppear(animated: Bool) {
        passwordTextField.becomeFirstResponder()
    }
    
    
    @IBAction func nextButtonDidTouch(sender: AnyObject) {
        
        if passwordTextField.text!.characters.count >= 6 {

            performSegueWithIdentifier("toAppSegue", sender: self)
            
        } else {
            shakeAnimation(formView)
        }
        
        
}
    
    
}
