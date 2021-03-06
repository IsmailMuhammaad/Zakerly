//
//  FavouritesTableViewCell.swift
//  Zakerly
//
//  Created by Izma3iin on 6/23/21.
//

import UIKit

class FavouritesTableViewCell: UITableViewCell {

    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var instructorImage: UIImageView!
    @IBOutlet weak var instructorName: UILabel!
    @IBOutlet weak var instructorSpeciality: UILabel!
    @IBOutlet weak var instructorDescription: UILabel!
    @IBOutlet weak var addToFavsBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainBackground.layer.cornerRadius = 10
        mainBackground.layer.masksToBounds = false
        shadowView.layer.cornerRadius = 10
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowOffset = CGSize(width: 2, height: 3)
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOpacity = 0.5
        shadowView.layer.shadowRadius = 5
        instructorImage.layer.masksToBounds = true
   
        instructorImage.layer.cornerRadius = instructorImage.frame.height/2
        instructorImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(image: String, name: String, speciality: String, description: String){
        instructorImage.sd_setImage(with: URL(string: image), placeholderImage: UIImage(named: "noUser"), options: .continueInBackground, completed: nil)
        instructorName.text = name
        instructorSpeciality.text = speciality
        instructorDescription.text = description
        
        
    }
    
}
