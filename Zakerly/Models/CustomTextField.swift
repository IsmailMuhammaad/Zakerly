//
//  CustomTextField.swift
//  Zakerly
//
//  Created by Izma3iin on 6/22/21.
//

import UIKit

class CustomTextField: UITextField, UITextFieldDelegate {

    override func awakeFromNib() {
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowOpacity = 0.5
        layer.cornerRadius = 5
        layer.masksToBounds = false
        
        delegate = self
        
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.delegate = self
        
        textField.resignFirstResponder()

        return true
    }
    
}
