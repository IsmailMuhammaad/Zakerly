//
//  InstructorFriendViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/1/21.
//

import UIKit
import Cosmos

class InstructorFriendViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var commentsArr = [Comment]()
    
    @IBOutlet var instructorPhoto: UIImageView!
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
    @IBOutlet var commentsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        instructorPhoto.layer.cornerRadius = instructorPhoto.frame.width / 2
        instructorPhoto.layer.masksToBounds = true
        commentsTableView.delegate = self
        commentsTableView.dataSource = self
        
        commentsTableView.register(UINib(nibName: "CommentsTableViewCell", bundle: nil), forCellReuseIdentifier: "commentCell")
        
        commentsArr.append(Comment.init(comment: "My life is so much better with this instructor im very veryhappy thank you for everything mister i'll never forget you", photo: UIImage(named: "img")!))
        commentsArr.append(Comment.init(comment: "My life is so much better with this instructor im very veryhappy thank you for everything mister i'll never forget you", photo: UIImage(named: "img")!))
        commentsArr.append(Comment.init(comment: "My life is so much better with this instructor im very veryhappy thank you for everything mister i'll never forget you", photo: UIImage(named: "img")!))
        commentsArr.append(Comment.init(comment: "My life is so much better with this instructor im very veryhappy thank you for everything mister i'll never forget you", photo: UIImage(named: "img")!))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return commentsArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = commentsTableView.dequeueReusableCell(withIdentifier: "commentCell") as! CommentsTableViewCell
        let data = commentsArr[indexPath.row]
        cell.setupCell(image: data.photo, description: data.comment)
        return cell
    }
    

    
    @IBAction func chatBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func videoBtnPressed(_ sender: Any) {
    
    }
    
    @IBAction func requestBtnPressed(_ sender: Any) {
    
    }
    
    @IBAction func unconnectBtnPressed(_ sender: Any) {
    
    }
    
    @IBAction func makeCommentPressed(_ sender: Any) {
    }
    
    
    struct Comment {
        let comment : String
        let photo : UIImage
    }
    
}
