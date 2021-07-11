//
//  Instructor.swift
//  Zakerly
//
//  Created by Izma3iin on 7/10/21.
//

import Foundation
import FirebaseDatabase

class Instructor : ToDict {
    typealias T = Instructor
    
    static public func fromDict(snapshot: DataSnapshot) -> Instructor {
    let dict = snapshot.value as! [String: AnyObject]
        let userSnapshot = snapshot.childSnapshot(forPath: "user")
        let user = User.fromDict(snapshot: userSnapshot)
        print("IM IN FROM DICT INSTRUCTOR  LESSSGOOÖ")

        let instructorFromDict = Instructor(averageRate: dict["averageRate"] as? Int ?? 0, bio: dict["bio"] as? String ?? "", fiveStarCount: dict["fiveStarCount"] as? Int ?? 0, fourStarCount: dict["fourStarCount"] as? Int ?? 0, numberOfStudents: dict["numberOfStudents"] as? Int ?? 0, oneStarCount: dict["oneStarCount"] as? Int ?? 0, pricePerHour: dict["pricePerHour"] as? Int ?? 0, rate: dict["rate"] as? Int ?? 0, threeStarCount: dict["threeStarCount"] as? Int ?? 0, title: dict["title"] as? String ?? "", twoStarCount: dict["twoStarCount"] as? Int ?? 0, user: user)
        print("IM IN FROM DICT INSTRUCTOR AND FINISHED IT LESSSGOOÖ")

    return instructorFromDict
}
public func toDict() -> NSDictionary {
    print("IM IN TO DICT INSTRUCTOR AND FINISHED IT LESSSGOOÖ")

    return NSDictionary(objects: [self.averageRate, self.bio , self.fiveStarCount, self.fourStarCount , self.threeStarCount, self.twoStarCount, self.oneStarCount, self.numberOfStudents , self.pricePerHour , self.rate , self.title , self.user ], forKeys: ["averageRate" as NSCopying, "bio" as NSCopying, "fiveStarCount" as NSCopying, "fourStarCount" as NSCopying,"threeStarCount" as NSCopying, "twoStarCount" as NSCopying, "oneStarCount" as NSCopying, "numberOfStudents" as NSCopying, "pricePerHour" as NSCopying , "rate" as NSCopying, "tiitle" as NSCopying, "user" as NSCopying])
}
    

    
    
    let averageRate: Int
    let bio: String
    let fiveStarCount, fourStarCount: Int
    let numberOfStudents, oneStarCount, pricePerHour, rate: Int
    let threeStarCount: Int
    let title: String
    let twoStarCount: Int
    let user: User

    init(averageRate: Int, bio: String, fiveStarCount: Int, fourStarCount: Int, numberOfStudents: Int, oneStarCount: Int, pricePerHour: Int, rate: Int, threeStarCount: Int, title: String, twoStarCount: Int, user: User) {
        self.averageRate = averageRate
        self.bio = bio
        self.fiveStarCount = fiveStarCount
        self.fourStarCount = fourStarCount
        self.numberOfStudents = numberOfStudents
        self.oneStarCount = oneStarCount
        self.pricePerHour = pricePerHour
        self.rate = rate
        self.threeStarCount = threeStarCount
        self.title = title
        self.twoStarCount = twoStarCount
        self.user = user
        print("I FINISHED INITIALIZATION OF INSTRUCTOR LESSSGOOÖ")

    }

}
