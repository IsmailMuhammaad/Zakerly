//
//  InstructorViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/1/21.
//

import UIKit
import Cosmos
import FirebaseDatabase
import SDWebImage
class InstructorViewController: UIViewController {
    
    var instructor : Instructor?
    
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

        self.setupProfile(photo: self.instructor?.user.profileImg ?? "noUser", name: "\(self.instructor?.user.firstName ?? "Instructor") \(self.instructor?.user.lastName ?? "Name")", speciality: self.instructor?.title ?? "Instructor Title", price: self.instructor?.pricePerHour ?? 0, numOfStudents: self.instructor?.numberOfStudents ?? 0, description: self.instructor?.bio ?? "Bio", rate: self.instructor?.averageRate ?? 0, fiveStarsPercentage: self.instructor?.fiveStarCount ?? 0, fourStarsPercentage: self.instructor?.fourStarCount ?? 0, threeStarsPercentage: self.instructor?.threeStarCount ?? 0, twoStarsPercentage: self.instructor?.twoStarCount ?? 0, oneStarPercentage: self.instructor?.oneStarCount ?? 0)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = false
        navigationItem.hidesBackButton = false
    }
    @IBAction func requestBtnPressed(_ sender: Any) {
    }
    
    @IBAction func makeCommentBtnPressed(_ sender: Any) {
    }
    
    
    func setupProfile(photo : String , name : String , speciality : String ,price : Int , numOfStudents : Int , description : String , rate : Int , fiveStarsPercentage : Int , fourStarsPercentage : Int, threeStarsPercentage : Int, twoStarsPercentage : Int , oneStarPercentage : Int){
        
        self.instructorPhoto?.sd_setImage(with: URL(string: photo), placeholderImage: UIImage(named: "noUser"), options: .continueInBackground, completed: nil)
        self.instructorName?.text = name
        self.instructorSpeciality?.text = speciality
        self.price?.text = String(price)
        self.numOfStudents?.text = String(numOfStudents)
        self.instructorDescription?.text = description
        self.instructorRate?.text = String(rate)
        self.fiveStarsPercentage?.text = String(fiveStarsPercentage)
        self.fourStarsPercentage?.text = String(fourStarsPercentage)
        self.threeStarsPercentage?.text = String(threeStarsPercentage)
        self.twoStarsPercentage?.text = String(twoStarsPercentage)
        self.oneStarPercentage?.text = String(twoStarsPercentage)

        
    }
}
