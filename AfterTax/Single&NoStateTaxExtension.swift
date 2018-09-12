//
//  Single&NoStateTaxExtension.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
extension TaxPayerController {
  
    
    func calculateAmountForSingleWithoutStateTax(hours: Double)-> Double{
        
        let grossPay = Double(hours) * Double(hourlyPay)
        
        cashBeforeTaxes = grossPay
        
        federalIncomeAfterAllowance = grossPay - Double(allAllowances)
        
        switch grossPay {
        case _ where federalIncomeAfterAllowance > 71 && federalIncomeAfterAllowance <= 254:
            
            let remainder = federalIncomeAfterAllowance - 71
            federalIncomeTax = remainder * 0.10
            print("Federal Income tax is = \(federalIncomeTax)")
            federalIncomeTax = federalIncomeTax + 0.00
            
            
            
            //State Taxes
            
            print("Your State tax is = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            
            //Social security
            socialSecurityTax = grossPay * 0.062
            print("Your social security = \(socialSecurityTax)")
            
            
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance > 254 && federalIncomeAfterAllowance <= 815:
            
            let remainder = federalIncomeAfterAllowance - 254
            federalIncomeTax = remainder * 0.12
            federalIncomeTax = federalIncomeTax + 18.30
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State tax
            
            print("utah State Tax  is = \(utahStateTax)")
            
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Socoal security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            
            
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance > 815 && federalIncomeAfterAllowance <= 1658:
            
            let remainder = federalIncomeAfterAllowance - 815
            federalIncomeTax = remainder * 0.22
            federalIncomeTax = federalIncomeTax + 85.62
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State taxes
            
            print("Social Security tax is = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //SocialSecurity
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance > 1658 && federalIncomeAfterAllowance <= 3100:
            
            let remainder = federalIncomeAfterAllowance - 1658
            federalIncomeTax = remainder * 0.24
            federalIncomeTax = federalIncomeTax + 271.08
            print("Federal Income tax is = \(federalIncomeTax)")
            
            //State Taxes
            
            print("utahStateTax = \( utahStateTax)")
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social Security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax  = \(socialSecurityTax )")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance > 3100 && federalIncomeAfterAllowance <= 3917:
            
            let remainder = federalIncomeAfterAllowance - 3100
            federalIncomeTax = remainder * 0.32
            federalIncomeTax = federalIncomeTax + 617.16
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //StateTax
            
            print("utahStateTax = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
        case _ where federalIncomeAfterAllowance > 3917 && federalIncomeAfterAllowance <= 9687:
            
            let remainder = federalIncomeAfterAllowance - 3917
            federalIncomeTax = remainder * 0.35
            federalIncomeTax = federalIncomeTax + 878.60
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            
            //State tax
            
            print("utahStateTax = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //SocialSecuroty
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
            
        case _ where federalIncomeAfterAllowance > 9687 && federalIncomeAfterAllowance <= 10000000000000000000000000000000:
            
            let remainder = federalIncomeAfterAllowance - 2898.10
            federalIncomeTax = remainder * 0.37
            federalIncomeTax = federalIncomeTax + 2325.28
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State Taxes
            
            print("utahStateTax = \(utahStateTax)")
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social Security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax = \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            ;
            
            
        default:
            print("Income Tax is Zero")
            
            //State
            
            print("Social Security tax is = \(utahStateTax)")
            
            
            //Medicaid
            medicAidTax = grossPay * 0.0145
            print("MedicAid tax is = \(medicAidTax)")
            
            //Social Security
            socialSecurityTax = grossPay * 0.062
            print("socialSecurityTax= \(socialSecurityTax)")
            
            totalTaxes = socialSecurityTax + federalIncomeTax + medicAidTax + utahStateTax
            cashAfterTax = grossPay - totalTaxes
            print("total taxes \(totalTaxes)")
            print("So what you finally get after all taxes is \(cashAfterTax)")
            return cashAfterTax
            
        }
        
        
    }
    
}
