//
//  CleanPerson.swift
//  ChoreSolver
//
//  Created by yao  on 7/10/16.
//  Copyright © 2016 yao . All rights reserved.
//



import Foundation
import Bond
import Parse
import ConvenienceKit
class Request: PFObject, PFSubclassing {
    
    @NSManaged var customer: User
    @NSManaged var cleanPerson: User
    @NSManaged var agree: NSNumber //Parse's boolean is NSNumber
    @NSManaged var checked: NSNumber
    
    //MARK: PFSubclassing Protocol
    
    static func parseClassName() -> String {
        return "Request"
    }
    
    override init() {
        super.init()
        
    }
    
    override class func initialize() {
        var onceToken : dispatch_once_t = 0;
        dispatch_once(&onceToken) {
            // inform Parse about this subclass
            self.registerSubclass()
        }
    }
    
    
    
}