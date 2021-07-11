//
//  CollectionViewCell.swift
//  Zakerly
//
//  Created by Izma3iin on 6/25/21.
//

import UIKit
import SDWebImage
class RecommendedCollectionViewCell: UICollectionViewCell {
 
    @IBOutlet weak var instructorName: UILabel!
    @IBOutlet weak var instructorSpeciality: UILabel!
    @IBOutlet weak var instructorDescription: UILabel!
    @IBOutlet weak var instructorImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
        layer.cornerRadius = 10
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 2, height: 3)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 5
    
        instructorImage.layer.masksToBounds = true
        instructorImage.layer.cornerRadius = instructorImage.frame.height/2
        instructorImage.clipsToBounds = true
    }


    func setupCell(image: String, name: String, speciality: String, description: String){
        instructorImage.sd_setImage(with: URL(string: image), placeholderImage: UIImage(named: "noUser"), options: .continueInBackground, completed: nil)
        instructorName.text = name
        instructorSpeciality.text = speciality
        instructorDescription.text = description
        
        
    }
    
}
