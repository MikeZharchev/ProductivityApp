import UIKit

class LoginEmailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var formView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        emailTextField.delegate = self
        emailTextField.layer.cornerRadius = 4
        emailTextField.layer.borderColor = UIColor(red: 255, green: 255, blue: 255, alpha: 0.2).CGColor
        emailTextField.layer.borderWidth = 1
        
        emailTextField.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        emailTextField.leftTextMargin = 10
        emailTextField.setNeedsLayout()
        emailTextField.layoutIfNeeded()
        
        
        nextButton.layer.cornerRadius = 4
        
        slideFromTheRight(formView, duration: 1, delay: 0)
    }
    
    override func viewWillAppear(animated: Bool) {
        emailTextField.becomeFirstResponder()
    }
    
    @IBAction func nextButtonDidTouch(sender: AnyObject) {
        
        let fieldText: String = emailTextField.text as String!
        let emailCheckResult = isValidEmail(fieldText)
        
            switch emailCheckResult {
            
            case true:
                performSegueWithIdentifier("logInPasswordSegue", sender: self)
            case false:
                shakeAnimation(formView)
        }
    
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        nextButtonDidTouch(nextButton)
        return true
    }
    
}
