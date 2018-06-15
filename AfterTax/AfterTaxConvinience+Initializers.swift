//
//  PerezFitConvinience+Initializers.swift
//  AfterTax
//
//  Created by Riccardo Washington on 2/13/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import CoreData

extension AfterTaxModel {
    
    
    convenience init(married: Bool, state: String, federalAllowance : String, stateAllowance: String, hourlyPay : String,  context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context : context)
        
        
        self.federalAllowance = federalAllowance
        self.hourlyPay = hourlyPay
        self.state = state
        self.stateAllowance = stateAllowance
        self.married = married
    }
}

