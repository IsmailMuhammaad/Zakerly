//
//  SettingsViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 6/28/21.
//

import UIKit
import Firebase
class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func languagePressed(_ sender: Any) {
    }
    
    @IBAction func darkModePressed(_ sender: Any) {
    }
    
    @IBAction func rateUsPressed(_ sender: Any) {
    }
    
    @IBAction func aboutPressed(_ sender: Any) {
    }
    
    @IBAction func privacyPressed(_ sender: Any) {
    }
    
    @IBAction func contactWithUsPressed(_ sender: Any) {
    }
    
    @IBAction func signOutPressed(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print ("Error signing out: %@", signOutError)
    }
        
    }
    
}
