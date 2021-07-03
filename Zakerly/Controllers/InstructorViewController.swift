//
//  InstructorViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/1/21.
//

import UIKit
import Cosmos
class InstructorViewController: UIViewController {

    @IBOutlet weak var instructorPhoto: UIImageView!
    @IBOutlet var instructorName: UILabel!
    @IBOutlet var instructorSpeciality: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var numOfStudents: UILabel!
    @IBOutlet var instructorDescription: UILabel!
    @IBOutlet var instructorRate: UILabel!
    @IBOutlet var fiveStarsPercentage: UILabel!
    @IBOutlet var fourStarsPercentage: UILabel!
    @IBOutlet var threeStarsPercentage: UILabel!
    @IBOutlet var twoStarsPercentage: UILabel!
    @IBOutlet var oneStarPercentage: UILabel!
    @IBOutlet var makeCommentTF: CustomTextField!
    @IBOutlet var cosmosView: CosmosView!
    override func viewDidLoad() {
        super.viewDidLoad()
        instructorPhoto.layer.cornerRadius = instructorPhoto.frame.width / 2
        instructorPhoto.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func requestBtnPressed(_ sender: Any) {
    }
    
    @IBAction func makeCommentBtnPressed(_ sender: Any) {
    }
}
