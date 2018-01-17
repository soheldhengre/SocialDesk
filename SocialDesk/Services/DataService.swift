//
//  DataService.swift
//  SocialDesk
//
//  Created by Sohel Dhengre on 12/01/18.
//  Copyright © 2018 Sohel Dengre. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService{
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference{
        return _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference{
        return _REF_GROUPS
    }
    
    var REF_GROUP: DatabaseReference{
        return _REF_FEED
    }
    
    func createUser(uid:String, userData:[String:Any]){
    REF_USERS.child(uid).updateChildValues(userData)
    
    }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    
}
