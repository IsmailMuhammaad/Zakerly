//
//  customView.swift
//  Zakerly
//
//  Created by Izma3iin on 7/6/21.
//

import UIKit

class customView: UIView {

    override func awakeFromNib() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowOpacity = 0.3
        layer.cornerRadius = 8
        layer.masksToBounds = false
        
    }

}
