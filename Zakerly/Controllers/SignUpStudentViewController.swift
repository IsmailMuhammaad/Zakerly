//
//  SignUpStudentViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 6/23/21.
//

import UIKit
import Firebase

class SignUpStudentViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var studentNameTF: CustomTextField!
    @IBOutlet var studentLastNameTF: CustomTextField!
    @IBOutlet var studentEmailTF: CustomTextField!
    @IBOutlet var studentPasswordTF: CustomTextField!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    


    

    @IBAction func instructorBtnPressed(_ sender: Any) {
        
        let instructorVC = self.storyboard?.instantiateViewController(identifier: "instructorVC")
        navigationController?.pushViewController(instructorVC!, animated: true)
        }
    
    @IBAction func signUpPressed(_ sender: Any) {
        if let email = studentEmailTF.text , let password = studentPasswordTF.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e.localizedDescription)
            }else {
                print("Successfully added user with id : \(authResult?.user.uid ?? "")")
                }
                
                }
            
            }
   
        }
        
    }
    


