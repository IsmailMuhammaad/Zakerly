//
//  Interests.swift
//  Zakerly
//
//  Created by Izma3iin on 7/5/21.
//

import Foundation


public class Interests : ToDict {
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
