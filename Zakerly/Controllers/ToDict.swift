//
//  File.swift
//  Zakerly
//
//  Created by Izma3iin on 7/5/21.
//

import Foundation
import FirebaseDatabase

public protocol ToDict{
    associatedtype T
    func toDict() -> NSDictionary
   static func fromDict(snapshot : DataSnapshot) -> T
    
    
}
