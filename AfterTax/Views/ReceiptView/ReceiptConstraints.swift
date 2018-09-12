//
//  Constraints.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import UIKit


extension ReceiptViewController {
    func constrainButtons(){
        
        //TaxStackView
        
        allTaxesStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.93599, constant: 0).isActive = true
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.40, constant: 0).isActive = true
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.9, constant: 0).isActive = true
        
        //ReceiptStackView
        
        receiptStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: receiptStackView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        
        NSLayoutConstraint(item: receiptStackView, attribute: .bottom, relatedBy: .equal, toItem: allTaxesStackView, attribute: .bottom, multiplier: 0.98, constant: 0).isActive = true
        
        NSLayoutConstraint(item: receiptStackView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.35, constant: 0).isActive = true
        
        NSLayoutConstraint(item: receiptStackView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.9, constant: 0).isActive = true
        
        //blurryView
        
        blurryView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint(item: blurryView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 10000000).isActive = true
        
        federalIncomeView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
