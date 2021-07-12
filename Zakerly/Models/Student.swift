

import Foundation
import FirebaseDatabase

class Student : ToDict {
    
    typealias T = Student
    
    static public func fromDict(snapshot: DataSnapshot) -> Student {
        let userSnapshot = snapshot.childSnapshot(forPath: "user")
        let user = User.fromDict(snapshot: userSnapshot)

        let studentFromDict = Student(user: user)

    return studentFromDict
}
public func toDict() -> NSDictionary {

    return NSDictionary(objects: [ self.user ], forKeys: ["user" as NSCopying])
}
    
    let user : User
    
    init(user : User) {
        self.user = user
    }
    
    
}
