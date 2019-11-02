//
//  Model.swift
//  AlamofireDemo
//
//  Created by Suresh Shiga on 18/10/18.
//  Copyright © 2018 Test. All rights reserved.
//

import Foundation
import UIKit

struct Model {
    let description:String?
}

class DataModel {
    
    var title = String()
    var body = String()
    var userID = String()
    var ID = String()
    
    init(title:String, body:String, userID:String, ID:String) {
        self.title   = title
        self.body    = body
        self.userID  = userID
        self.ID      = ID
    }
    
    
    
    
}
