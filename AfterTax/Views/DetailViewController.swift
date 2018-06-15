//
//  DetailViewController.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 1/2/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var receiptName: UILabel!
    @IBOutlet weak var receipt: UILabel!
    @IBOutlet weak var gotItButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
constrainButtons()
    }

   //Programatic constraints
    
    func constrainButtons(){
        
        //GotItButton
 gotItButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: gotItButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.80, constant: 1).isActive = true
        NSLayoutConstraint(item: gotItButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.10, constant: 1).isActive = true
        NSLayoutConstraint(item: gotItButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 1).isActive = true
        NSLayoutConstraint(item: gotItButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        //gotItButton.center.y = self.view.center.y

        
        //Receipt
        
        receipt.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: receipt, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.385, constant: 1).isActive = true
        NSLayoutConstraint(item: receipt, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.8, constant: 1).isActive = true
        NSLayoutConstraint(item: receipt, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        NSLayoutConstraint(item: receipt, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 1).isActive = true
        
        //ReceiptName
        
        receiptName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: receiptName, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 0.8, constant: 1).isActive = true
        
          NSLayoutConstraint(item: receiptName, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        
         NSLayoutConstraint(item: receiptName, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.12, constant: 1).isActive = true
       
         NSLayoutConstraint(item: receiptName, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 1).isActive = true

      //backButton
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: backButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.07, constant: 1).isActive = true
        NSLayoutConstraint(item: backButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.14, constant: 1).isActive = true
        NSLayoutConstraint(item: backButton, attribute: .top, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.05, constant: 1).isActive = true
       NSLayoutConstraint(item: backButton, attribute: .leading, relatedBy: .equal, toItem: receipt, attribute: .leading, multiplier: 1, constant: -10).isActive = true
        
    }
    
}
