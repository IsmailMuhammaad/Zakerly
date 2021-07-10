//
//  LoginViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 6/28/21.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseDatabase
import GoogleSignIn
import FBSDKCoreKit
import FBSDKLoginKit
class LoginViewController: UIViewController {
   /* func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
      if let error = error {
        print(error.localizedDescription)
        return
      }
        let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        print("logged out")
    }*/
    var ref: DatabaseReference!
    var programmingInterest = Interests.init(id: 0, ar: "البرجمة", en: "Programming")

    @IBOutlet var emailTF: CustomTextField!
    @IBOutlet var passwordTF: CustomTextField!
    @IBOutlet weak var signInWithGoogleBtn: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

        ref.child("specialisations").child("Programming").setValue(programmingInterest.toDict())
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
       // signInWithFacebookBtn.delegate = self
        if( GIDSignIn.sharedInstance()?.currentUser != nil ){
            self.performSegue(withIdentifier: "goToStudentHome", sender: self)
            // Signed in
        }
            else {
                GIDSignIn.sharedInstance().signIn()
            }
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
