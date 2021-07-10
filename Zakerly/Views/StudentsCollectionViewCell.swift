//
//  StudentsCollectionViewCell.swift
//  Zakerly
//
//  Created by Izma3iin on 7/8/21.
//

import UIKit

class StudentsCollectionViewCell: UICollectionViewCell {

    @IBOutlet var studentName: UILabel!
    @IBOutlet var className: UILabel!
    @IBOutlet var studentImage: RoundedImage!
    override func awakeFromNib() {
        super.awakeFromNib()
        studentImage.layer.borderWidth = 2
        studentImage.layer.borderColor = #colorLiteral(red: 0.577629149, green: 0.5863593221, blue: 0.6100923419, alpha: 1)
    }

    func setupCell(name : String, theClass : String, photo : UIImage)  {
        
        studentName.text = name
        className.text = theClass
        studentImage.image = photo
        
        
    }
    
    @IBAction func xBtnPressed(_ sender: Any) {
    }
}
