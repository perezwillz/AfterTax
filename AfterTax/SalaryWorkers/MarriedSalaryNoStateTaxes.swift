//
//  MarriedSalaryNoStateTaxes.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation

extension TaxPayerController {
    
    func CalculateAmountForMarriedSALARYWithNOStateTaxes(hours: Double)-> Double{
        
        let grossPay = Double(hours) * Double(hourlyPay)
        
        cashBeforeTaxes = grossPay
        
        federalIncomeAfterAllowance = grossPay - Double(allAllowancesForSalaries)
        
        switch grossPay {
        case _ where federalIncomeAfterAllowance > 11550 && federalIncomeAfterAllowance <= 30600:
            
            let remainder = federalIncomeAfterAllowance - 11550
            federalIncomeTax = remainder * 0.10
            print("Federal Income tax is = \(federalIncomeTax)")
            federalIncomeTax = federalIncomeTax + 0.00
            
            
            
            //State Taxes
            //utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 30600 && federalIncomeAfterAllowance <= 88950:
            
            let remainder = federalIncomeAfterAllowance - 30600
            federalIncomeTax = remainder * 0.12
            federalIncomeTax = federalIncomeTax + 1905.00
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State tax
            //utahStateTax  = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 88950 && federalIncomeAfterAllowance <= 176550:
            
            let remainder = federalIncomeAfterAllowance - 88950
            federalIncomeTax = remainder * 0.22
            federalIncomeTax = federalIncomeTax + 8907.00
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State taxes
            //utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 176550 && federalIncomeAfterAllowance <= 326550:
            
            let remainder = federalIncomeAfterAllowance - 176550
            federalIncomeTax = remainder * 0.24
            federalIncomeTax = federalIncomeTax + 28179.00
            print("Federal Income tax is = \(federalIncomeTax)")
            
            //State Taxes
            //utahStateTax = grossPay * 0.05
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
            
        case _ where federalIncomeAfterAllowance > 326550 && federalIncomeAfterAllowance <= 411550:
            
            let remainder = federalIncomeAfterAllowance - 326550
            federalIncomeTax = remainder * 0.32
            federalIncomeTax = federalIncomeTax + 64179
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //StateTax
            //utahStateTax = grossPay * 0.05
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
            
        case _ where  federalIncomeAfterAllowance > 411550 && federalIncomeAfterAllowance <= 611550:
            
            let remainder = federalIncomeAfterAllowance - 411550
            federalIncomeTax = remainder * 0.35
            federalIncomeTax = federalIncomeTax + 91379.00
            print("Federal Income tax is = \(federalIncomeTax)")
            
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
            
            
        case _ where federalIncomeAfterAllowance > 611550 && federalIncomeAfterAllowance <= 100000000000000000000000000000000000000000000000000:
            
            let remainder = federalIncomeAfterAllowance - 611550
            federalIncomeTax = remainder * 0.37
            federalIncomeTax = federalIncomeTax + 161379.00
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            //State Taxes
            //utahStateTax = grossPay * 0.05
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
            //utahStateTax = grossPay * 0.05
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
