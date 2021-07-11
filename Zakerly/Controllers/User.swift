//
//  File.swift
//  Zakerly
//
//  Created by Izma3iin on 7/5/21.
//

import Foundation
import FirebaseDatabase

public class User : ToDict {
    
    public typealias T = User
    
        static public func fromDict(snapshot: DataSnapshot) -> User {
        let dict = snapshot.value as! [String: AnyObject]
            let interestsSnapshot = snapshot.childSnapshot(forPath: "interests")
            let interests = interestsSnapshot.children.map{Interests.fromDict(snapshot: $0 as! DataSnapshot)}
            


            let userFromDict = User(authType: dict["authType"] as! String, email: dict["email"] as! String, firstName: dict["firstName"] as! String, lastName: dict["lastName"] as! String, profileImg: dict["profileImg"] as? String ?? "", type: dict["type"] as! String , uid: dict["uid"] as! String, notificationToken: dict["notificationToken"] as? String ?? "", interests: interests)
        return userFromDict
    }
    public func toDict() -> NSDictionary {
        return NSDictionary(objects: [self.authType, self.email , self.firstName, self.lastName , self.notificationToken, self.profileImg, self.uid, self.type , self.interests], forKeys: ["authType" as NSCopying, "email" as NSCopying, "firstName" as NSCopying, "lastName" as NSCopying,"notificationToken" as NSCopying, "profileImg" as NSCopying, "uid" as NSCopying, "type" as NSCopying, "interests" as NSCopying])
    }
    init(authType : String , email : String , firstName : String , lastName : String, profileImg : String , type : String , uid : String , notificationToken : String , interests : [Interests]) {
    
        self.authType = authType
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.notificationToken = notificationToken
        self.profileImg = profileImg
        self.uid = uid
        self.type = type
        self.interests = interests
    }
    
    var authType : String
    var email : String
    var firstName : String
    var lastName : String
    var profileImg : String
    var type : String
    var uid : String
    var notificationToken : String
    var interests = [Interests]()
    
    
    
}
