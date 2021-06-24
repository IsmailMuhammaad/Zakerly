//
//  FavouritesViewController.swift
//  Zakerly
//
//  Created by Izma3iin on 6/23/21.
//

import UIKit

class FavouritesViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   

    @IBOutlet weak var favouritesTableView: UITableView!
    var arrInstructors = [Instructor]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        favouritesTableView.delegate = self
        favouritesTableView.dataSource = self
        
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "IMG-20180811-WA0107.jpg")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan >> Mmmm is the best dentist evaaaaah!!!!", image: UIImage(named: "IMG-20180811-WA0107.jpg")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "asset-1")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "img2")!))
        arrInstructors.append(Instructor.init(name: "Ismail Muhammad", speciality: "iOS Developer", description: "My Name is Ismail , I love Basketball, I love AC Milan", image: UIImage(named: "img")!))
     }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrInstructors.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favouritesTableView.dequeueReusableCell(withIdentifier: "favCell") as! FavouritesTableViewCell
        let data = arrInstructors[indexPath.row]
        cell.setupCell(image: data.image, name: data.name, speciality: data.speciality, description: data.description)
        
        return cell
       }
    
       
    
    struct Instructor {
        
        let name : String
        let speciality : String
        let description : String
        let image: UIImage
        
        
        
    }

}