//
//  ConstraintExtenstions.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import UIKit


extension MainViewController {
    
    func constrainButtons(){
        //Buttons
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: buttonStackView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.1, constant: 1).isActive = true
        NSLayoutConstraint(item: buttonStackView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.90, constant: 0).isActive = true
        NSLayoutConstraint(item: buttonStackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.98, constant: 0).isActive = true
        NSLayoutConstraint(item: buttonStackView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        //numberPad
        
        numberPadStackView.translatesAutoresizingMaskIntoConstraints = false
        //0.42728636
        NSLayoutConstraint(item: numberPadStackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.84, constant: 1).isActive = true
        NSLayoutConstraint(item: numberPadStackView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        NSLayoutConstraint(item: numberPadStackView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.42728636, constant: 1).isActive = true
        NSLayoutConstraint(item: numberPadStackView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.95, constant: 1).isActive = true
        
        
        //Zero
        
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint(item: numberLabel, attribute: .bottom, relatedBy: .equal, toItem: numberPadStackView, attribute: .top, multiplier: 1, constant: 1).isActive = true
        NSLayoutConstraint(item: numberLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        
        NSLayoutConstraint(item: numberLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.80, constant: 1).isActive = true
        
        
        
        
        NSLayoutConstraint(item: numberLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.18, constant: 1).isActive = true
        
        //HouryRateLabel
        hourlyRateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: hourlyRateLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        NSLayoutConstraint(item: hourlyRateLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.07, constant: 1).isActive = true
        NSLayoutConstraint(item: hourlyRateLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 1).isActive = true
        NSLayoutConstraint(item: hourlyRateLabel, attribute: .bottom, relatedBy: .equal, toItem: numberLabel, attribute: .top, multiplier: 0.80, constant: 1).isActive = true
        
        
        
        //HourlyAndSalary
        hourlyAndSalaryView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: hourlyAndSalaryView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.06, constant: 0).isActive = true
        NSLayoutConstraint(item: hourlyAndSalaryView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.375, constant: 0).isActive = true
        NSLayoutConstraint(item: hourlyAndSalaryView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: hourlyAndSalaryView, attribute: .bottom, relatedBy: .equal, toItem: hourlyRateLabel, attribute: .top, multiplier: 1, constant: 0).isActive = true
        
        
        taxButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: taxButton, attribute: .trailing, relatedBy: .equal, toItem: hourlyAndSalaryView, attribute: .leading, multiplier: 0.4, constant: 1).isActive = true
        //        NSLayoutConstraint(item: taxButton, attribute: .top, relatedBy: .equal, toItem: hourlyAndSalaryView, attribute: .top, multiplier: 1, constant: 0).isActive = true
        //
        
        NSLayoutConstraint(item: taxButton, attribute: .centerY, relatedBy: .equal, toItem: hourlyAndSalaryView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: taxButton, attribute:.height , relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 1).isActive = true
        
        
        
        //Salarylabel
        salaryAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: salaryAmountLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 0).isActive = true
        
        NSLayoutConstraint(item: salaryAmountLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.05, constant: 0).isActive = true
        
        NSLayoutConstraint(item: salaryAmountLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: salaryAmountLabel, attribute: .bottom, relatedBy: .equal, toItem: numberDigitLabel, attribute: .top, multiplier: 0.75, constant: 1).isActive = true
        
        
        //HoursLabel
        
        hoursLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: hoursLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.7, constant: 0).isActive = true
        NSLayoutConstraint(item: hoursLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.04, constant: 0).isActive = true
        NSLayoutConstraint(item: hoursLabel, attribute: .bottom, relatedBy: .equal, toItem: numberPadStackView, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: hoursLabel, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 0.8, constant: 0).isActive = true
        
        
        //Dollarlabel
        dollarSign.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: dollarSign, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.09, constant: 0).isActive = true
        
        NSLayoutConstraint(item: dollarSign, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.089, constant: 0).isActive = true
        
        NSLayoutConstraint(item: dollarSign, attribute: .leading, relatedBy: .equal, toItem: taxButton, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: dollarSign, attribute: .centerY, relatedBy: .equal, toItem: numberLabel, attribute: .centerY, multiplier: 1, constant: -30).isActive = true
        
        
        //calculatingHourtlyPay
        
        enterHourlyButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: enterHourlyButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 1).isActive = true
        NSLayoutConstraint(item: enterHourlyButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.07, constant: 1).isActive = true
        NSLayoutConstraint(item: enterHourlyButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.4, constant: 1).isActive = true
        NSLayoutConstraint(item: enterHourlyButton, attribute: .bottom, relatedBy: .equal, toItem: numberLabel, attribute: .top, multiplier: 0.80, constant: 1).isActive = true
        
        //blurView
        
        blurView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint(item: blurView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blurView, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blurView, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: blurView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 1).isActive = true
        
        
    }
}
