//
//  UserData+CoreDataProperties.swift
//  CoreDataApp3
//
//  Created by class24 on 2016/9/20.
//  Copyright © 2016年 GUO. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension UserData {

    @NSManaged var cname: String?
    @NSManaged var iid: String?
    @NSManaged var own: NSSet?

}
