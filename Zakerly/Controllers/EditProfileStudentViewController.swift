//
//  EditProfileStudentViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/3/21.
//

import UIKit

class EditProfileStudentViewController: UIViewController {

    @IBOutlet weak var studentPhoto: RoundedImage!
    @IBOutlet weak var studentFirstNameTF: CustomTextField!
    @IBOutlet weak var studentLastNameTF: CustomTextField!
    @IBOutlet weak var studentEmailTF: CustomTextField!
    @IBOutlet weak var studentPasswordTF: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func changePhotoPressed(_ sender: Any) {
    }
    
    @IBAction func applyBtnPressed(_ sender: Any) {
    }
}
