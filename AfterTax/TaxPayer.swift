//
//  Model.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 1/2/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation


class Taxpayer {
   var name : String = "Perez"
    var hourlypay : Double = 10.00

    //Withholdings and deductions
    
    var married : Bool = false
    var state : String = "NY"
    var dependents : Int = 0
    var federalAllowance : Int = 0
    var stateAllowance : Int = 0
    var localAllowance : Int = 0
   
    
}



