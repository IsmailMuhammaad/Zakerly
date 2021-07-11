//
//  HomeViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 6/25/21.
//

import UIKit
import FirebaseDatabase
class HomeViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var discoverTableView: UITableView!
    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var recommendedCollectionView: UICollectionView!
    var arrInstructors = [Instructor]()
    var ref: DatabaseReference!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = true
        navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        ref.child("users").queryOrdered(byChild: "user/type").queryEqual(toValue: "INSTRUCTOR").observe(.value, with: { snapshot in
            for snap in snapshot.children {
                self.arrInstructors.append(Instructor.fromDict(snapshot: snap as! DataSnapshot))
                let l = Instructor.fromDict(snapshot: snap as! DataSnapshot)
                print(l)
            }
            self.topCollectionView.reloadData()
            self.discoverTableView.reloadData()
            self.recommendedCollectionView.reloadData()
            
        }
        )

        
        discoverTableView.register(UINib(nibName: "FavouritesTableViewCell", bundle: nil), forCellReuseIdentifier: "discoverCell")
        recommendedCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "recommendedCell")
        topCollectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "recommendedCell")
        topCollectionView.dataSource = self
        topCollectionView.delegate = self
        recommendedCollectionView.dataSource = self
        recommendedCollectionView.delegate = self
        discoverTableView.delegate = self
        discoverTableView.dataSource = self
       /* arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "IMG-20180811-WA0107.jpg")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan >> Mmmm is the best dentist evaaaaah!!!!", image: UIImage(named: "IMG-20180811-WA0107.jpg")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "asset-1")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "img2")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "img")!))*/
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrInstructors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recommendedCollectionView.dequeueReusableCell(withReuseIdentifier: "recommendedCell", for: indexPath) as! RecommendedCollectionViewCell
        let data = arrInstructors[indexPath.row]

        cell.setupCell(image: data.user.profileImg, name: "\(data.user.firstName) \(data.user.lastName)", speciality: data.title, description: data.bio)
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 212 , height: 125)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 14
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrInstructors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = discoverTableView.dequeueReusableCell(withIdentifier: "discoverCell") as! FavouritesTableViewCell
        let data = arrInstructors[indexPath.row]
        cell.setupCell(image: data.user.profileImg, name: "\(data.user.firstName) \(data.user.lastName)", speciality: data.title, description: data.bio)

        return cell
    }
   /* struct Instructor {
        
        let name : String
        let speciality : String
        let description : String
        let image: UIImage
        
        
        
    }*/
}
