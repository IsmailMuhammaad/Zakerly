//
//  RequestViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/3/21.
//


import UIKit

class RequestViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var instructorImage: UIImageView!
    @IBOutlet weak var learnTopicTF: UITextField!
    @IBOutlet weak var noOfHoursTF: UITextField!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = "Request"
        textView.textColor = UIColor.lightGray
        textView.delegate = self
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Request" {
            textView.text = ""
            textView.textColor = UIColor.black
                    }
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
        }
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.delegate = self
        
        textField.resignFirstResponder()

        return true
    }

    @IBAction func cancelBtnPressed(_ sender: Any) {
    }
    @IBAction func sendBtnPressed(_ sender: Any) {
    }
    
}

