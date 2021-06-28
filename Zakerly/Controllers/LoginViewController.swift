//
//  LoginViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 6/28/21.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet var emailTF: CustomTextField!
    @IBOutlet var passwordTF: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func signInPressed(_ sender: Any) {
        
        if let email = emailTF.text , let password = passwordTF.text {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            }else{
                  self.performSegue(withIdentifier: "goToStudentHome", sender: self)
                 }
            
        }

        }
    }
    
    @IBAction func forgetPasswordPressed(_ sender: Any) {

    }
    
    @IBAction func signUpPressed(_ sender: Any) {

    }
    
    @IBAction func signInFacebookPressed(_ sender: Any) {
        
    }
    
    @IBAction func signInGooglePressed(_ sender: Any) {
        
    }
    
    
}
