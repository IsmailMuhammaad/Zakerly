//
//  CustomButton.swift
//  Zakerly
//
//  Created by Izma3iin on 6/23/21.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowOpacity = 0.5
        layer.cornerRadius = 5
        layer.masksToBounds = false
        
    }
    
    
    

}
