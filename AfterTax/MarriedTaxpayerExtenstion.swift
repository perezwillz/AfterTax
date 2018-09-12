//
//  MarriedTaxpayerExtenstion.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation

extension TaxPayerController {
    
    func calculateAmountForMarried(hours: Double)-> Double{
        
        let grossPay = Double(hours) * Double(hourlyPay)
        
        cashBeforeTaxes = grossPay
        
        federalIncomeAfterAllowance = grossPay - Double(allAllowances)
        
        switch grossPay {
            
        case _ where federalIncomeAfterAllowance > 222 && federalIncomeAfterAllowance <= 588:
            
            let remainder = federalIncomeAfterAllowance - 222
            federalIncomeTax = remainder * 0.10
            print("Federal Income tax is = \(federalIncomeTax)")
            federalIncomeTax = federalIncomeTax + 0.00
            
            
            
            //State Taxes
            utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 588 && federalIncomeAfterAllowance <= 1711:
            
            let remainder = federalIncomeAfterAllowance - 588
            federalIncomeTax = remainder * 0.12
            federalIncomeTax = federalIncomeTax + 18.30
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State tax
            utahStateTax  = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 1711 && federalIncomeAfterAllowance <= 3395:
            
            let remainder = federalIncomeAfterAllowance - 1711
            federalIncomeTax = remainder * 0.22
            federalIncomeTax = federalIncomeTax + 85.62
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State taxes
            utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 3395 && federalIncomeAfterAllowance <= 6280:
            
            let remainder = federalIncomeAfterAllowance - 3395
            federalIncomeTax = remainder * 0.24
            federalIncomeTax = federalIncomeTax + 271.08
            print("Federal Income tax is = \(federalIncomeTax)")
            
            //State Taxes
            utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 6280 && federalIncomeAfterAllowance <= 7914:
            
            let remainder = federalIncomeAfterAllowance - 62800
            federalIncomeTax = remainder * 0.32
            federalIncomeTax = federalIncomeTax + 617.16
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //StateTax
            utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 7914 && federalIncomeAfterAllowance <= 11761:
            
            let remainder = federalIncomeAfterAllowance - 7914
            federalIncomeTax = remainder * 0.35
            federalIncomeTax = federalIncomeTax + 878.60
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            
            //State tax
            utahStateTax = grossPay * 0.05
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
            
            
        case _ where federalIncomeAfterAllowance > 11761 && federalIncomeAfterAllowance <= 1000000000000000000000000000000000000000000000000000:
            
            let remainder = federalIncomeAfterAllowance - 11761
            federalIncomeTax = remainder * 0.37
            federalIncomeTax = federalIncomeTax + 2325.28
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State Taxes
            utahStateTax = grossPay * 0.05
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
            utahStateTax = grossPay * 0.05
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
