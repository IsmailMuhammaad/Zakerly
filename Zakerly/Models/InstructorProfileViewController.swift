//
//  InstructorProfileViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 7/8/21.
//

import UIKit

class InstructorProfileViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource{

    

    @IBOutlet var instructorImage: UIImageView!
    @IBOutlet var instructorName: UILabel!
    @IBOutlet var noOfStudents: UILabel!
    @IBOutlet var studentsCollectionView: UICollectionView!
    
    var arrStudents = [Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentsCollectionView.delegate = self
        studentsCollectionView.dataSource = self
        studentsCollectionView.register(UINib(nibName: "StudentsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "studentCell")
        arrStudents.append(Student.init(name: "Kareem Hassan", theClass: "iOS", photo: UIImage(named: "img")!))
        arrStudents.append(Student.init(name: "Hossam Hassan", theClass: "UI", photo: UIImage(named: "img2")!))
        arrStudents.append(Student.init(name: "Ibrahim Hassan", theClass: "Android", photo: UIImage(named: "i")!))
        arrStudents.append(Student.init(name: "Hamada Showman", theClass: "Network", photo: UIImage(named: "img")!))
        instructorImage.layer.borderWidth = 2.5
        instructorImage.layer.borderColor = UIColor.blue.cgColor
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrStudents.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = studentsCollectionView.dequeueReusableCell(withReuseIdentifier: "studentCell", for: indexPath) as! StudentsCollectionViewCell
        let data = arrStudents[indexPath.row]
        cell.setupCell(name: data.name, theClass: data.theClass, photo: data.photo)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.4, height: self.view.frame.width * 0.4)
    }

    @IBAction func chatBtnPressed(_ sender: Any) {
    }
    
    @IBAction func videoBtnPressed(_ sender: Any) {
    }
    
    struct Student {
        let name : String
        let theClass : String
        let photo : UIImage
    }
    
}
