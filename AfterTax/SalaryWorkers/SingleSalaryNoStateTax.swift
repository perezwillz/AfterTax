//
//  SingleSalaryNoStateTax.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
extension TaxPayerController {
   
    func CalculateAmountForSingleSalaryWithNoStateTaxes(hours: Double)-> Double{
        
        let grossPay = Double(hours) * Double(hourlyPay)
        
        cashBeforeTaxes = grossPay
        
        federalIncomeAfterAllowance = grossPay - Double(allAllowancesForSalaries)
        
        switch grossPay {
        case _ where federalIncomeAfterAllowance > 3700 && federalIncomeAfterAllowance <= 13225:
            
            let remainder = federalIncomeAfterAllowance - 3700
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
            
        case _ where federalIncomeAfterAllowance > 13225 && federalIncomeAfterAllowance <= 42400:
            
            let remainder = federalIncomeAfterAllowance - 13225
            federalIncomeTax = remainder * 0.12
            federalIncomeTax = federalIncomeTax + 952.50
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
            
        case _ where federalIncomeAfterAllowance > 42400 && federalIncomeAfterAllowance <= 86200:
            
            let remainder = federalIncomeAfterAllowance - 42400
            federalIncomeTax = remainder * 0.22
            federalIncomeTax = federalIncomeTax + 4453.50
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
            
        case _ where federalIncomeAfterAllowance > 86200 && federalIncomeAfterAllowance <= 161200:
            
            let remainder = federalIncomeAfterAllowance - 86200
            federalIncomeTax = remainder * 0.24
            federalIncomeTax = federalIncomeTax + 14089.50
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
            
        case _ where federalIncomeAfterAllowance > 161200 && federalIncomeAfterAllowance <= 203700:
            
            let remainder = federalIncomeAfterAllowance - 161200
            federalIncomeTax = remainder * 0.32
            federalIncomeTax = federalIncomeTax + 32089.50
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
            
        case _ where  federalIncomeAfterAllowance > 203700 && federalIncomeAfterAllowance <= 503700:
            
            let remainder = federalIncomeAfterAllowance - 203700
            federalIncomeTax = remainder * 0.35
            federalIncomeTax = federalIncomeTax + 45689.50
            print("Federal Income tax is = \(federalIncomeTax)")
            
            
            
            //State tax
            //utahStateTax = grossPay * 0.05
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
            
            
        case _ where federalIncomeAfterAllowance > 503700 && federalIncomeAfterAllowance <= 100000000000000000000000000000000000000000000000000:
            
            let remainder = federalIncomeAfterAllowance - 503700
            federalIncomeTax = remainder * 0.37
            federalIncomeTax = federalIncomeTax + 150689.50
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
