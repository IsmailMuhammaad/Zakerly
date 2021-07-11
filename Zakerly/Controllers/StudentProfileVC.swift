//
//  StudentProfileVC.swift
//  Zakerly
//
//  Created by Izma3iin on 6/24/21.
//

import UIKit

class StudentProfileVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var myTeachersTableView: UITableView!
    @IBOutlet weak var studentPhoto: UIImageView!
    var arrInstructors = [Instructor]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTeachersTableView.register(UINib(nibName: "FavouritesTableViewCell", bundle: nil), forCellReuseIdentifier: "myTeachersCell")
        studentName.text = "Ismail Muhammad"
        studentPhoto.layer.cornerRadius = studentPhoto.frame.width/2
        studentPhoto.layer.masksToBounds = true
        studentPhoto.layer.borderWidth = 2.5
        studentPhoto.layer.borderColor = UIColor.blue.cgColor
        studentPhoto.image = UIImage(named: "img")
        myTeachersTableView.delegate = self
        myTeachersTableView.dataSource = self
        
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "IMG-20180811-WA0107.jpg")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan >> Mmmm is the best dentist evaaaaah!!!!", image: UIImage(named: "IMG-20180811-WA0107.jpg")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "asset-1")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "img2")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "img")!))
    }
    
    @IBAction func changePhotoPressed(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrInstructors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTeachersTableView.dequeueReusableCell(withIdentifier: "myTeachersCell") as! FavouritesTableViewCell
        let data = arrInstructors[indexPath.row]
//        cell.setupCell(image: data.image, name: data.name, speciality: data.speciality, description: data.description)
        return cell
    }
    struct Instructor {
        
        let name : String
        let speciality : String
        let description : String
        let image: UIImage
        
        
        
    }

}
