//
//  EditRequestViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/3/21.
//

import UIKit

class EditRequestViewController: UIViewController {

    @IBOutlet weak var studentImage: RoundedImage!
    @IBOutlet weak var instructorPhoto: RoundedImage!
    @IBOutlet weak var learnTopicTF: UITextField!
    @IBOutlet weak var noOfHoursTF: UITextField!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendBtnPressed(_ sender: Any) {
    }
    
    @IBAction func cancelBtnPressed(_ sender: Any) {
    }
    
    @IBAction func editBtnPressed(_ sender: Any) {
        textView.isEditable = true
    }
}
