//
//  CommentsTableViewCell.swift
//  Zakerly
//
//  Created by Izma3iin on 6/30/21.
//

import UIKit
import Cosmos
class CommentsTableViewCell: UITableViewCell {

    @IBOutlet weak var mainBackground: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var commenterPhoto: UIImageView!
    @IBOutlet weak var cosmosView: CosmosView!
    @IBOutlet weak var comment: UILabel!
    
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
        commenterPhoto.layer.cornerRadius = commenterPhoto.frame.width/2
        commenterPhoto.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    func setupCell(image: UIImage, description: String){
        
        commenterPhoto.image = image
        comment.text = description
        
        
    }
}
