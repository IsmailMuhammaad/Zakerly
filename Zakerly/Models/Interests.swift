//
//  Interests.swift
//  Zakerly
//
//  Created by Izma3iin on 7/5/21.
//

import Foundation
import FirebaseDatabase

public class Interests : ToDict {
    
    public typealias T = Interests
    public static func fromDict(snapshot: DataSnapshot) -> Interests {
        let dict = snapshot.value as! [String: AnyObject]
        let interestFromDict = Interests(id: dict["id"] as! Int, ar: dict["ar"] as! String, en: dict["en"] as! String)
        return interestFromDict
    }
    public func toDict() -> NSDictionary {
        return NSDictionary(objects: [self.ar, self.en, self.id], forKeys: ["ar" as NSCopying , "en" as NSCopying , "id" as NSCopying])
    }
    
    
    init(id : Int , ar : String , en : String) {
        self.ar = ar
        self.en = en
        self.id = id
    }
    
    var ar : String
    var en : String
    var id : Int
    
    
    
    
    
}
