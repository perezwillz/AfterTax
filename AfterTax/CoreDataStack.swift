//
//  CoreDataStack.swift
//  AfterTax
//
//  Created by Riccardo Washington on 2/13/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack {
    
    //initialize container lazily
    static let container: NSPersistentContainer = {
        //name container name of data model
        let container = NSPersistentContainer(name: "AfterTax")
        //load everything from Persistent store
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if error != nil {
                fatalError()
            }
        })
        return container
    }()
    
    //set up scratch pad where managed objects live
    static var context: NSManagedObjectContext { return container.viewContext }
}

