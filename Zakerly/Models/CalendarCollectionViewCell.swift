//
//  CalendarCollectionViewCell.swift
//  Zakerly
//
//  Created by Izma3iin on 7/7/21.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    

    @IBOutlet var v: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var lessonLabel: UILabel!
    @IBOutlet weak var studentNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        v.layer.cornerRadius = 10
        v.layer.masksToBounds = true
        v.layer.cornerRadius = 10
        v.layer.masksToBounds = false
        v.layer.shadowOffset = CGSize(width: 2, height: 3)
        v.layer.shadowColor = UIColor.black.cgColor
        v.layer.shadowOpacity = 0.5
        v.layer.shadowRadius = 5
    
        
    }
    func setupCell(date: String, time: String, lesson: String, student: String){
        
        dateLabel.text = date
        timeLabel.text = time
        lessonLabel.text = lesson
        studentNameLabel.text = student
        
        
    }
    
    
    
}
