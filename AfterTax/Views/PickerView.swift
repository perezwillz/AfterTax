//
//  PickerView.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import UIKit

extension MainViewController:UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        if pickerView == hourlyPayPickerView{
            return 2
            
        }else {
            return 1
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == hourlyPayPickerView {
            if component == 0 {
                return TaxPayerController.shared.hourlyPayArray.count
                
            }else if component == 1 {
                return TaxPayerController.shared.hourlyPayCentArray.count
            } else {
                return 1
            }
        }
        else {
            return TaxPayerController.shared.arrayOfStates.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == hourlyPayPickerView{
            if component == 0 {
                return String(TaxPayerController.shared.hourlyPayArray[row])
            }else {
                return String(TaxPayerController.shared.hourlyPayCentArray[row])
            }
        }else {
            return TaxPayerController.shared.arrayOfStates[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == hourlyPayPickerView{
            
            let dollarAmountIndex = pickerView.selectedRow(inComponent: 0)
            let dollarAmount = TaxPayerController.shared.hourlyPayArray[dollarAmountIndex]
            
            let centAmountIndex = pickerView.selectedRow(inComponent: 1)
            let centAmount = TaxPayerController.shared.hourlyPayCentArray[centAmountIndex]
            
            hourlyRateDisplay.text = "$\(dollarAmount).\(centAmount)"
            
            
            pickerView.reloadComponent(1)
        }else {
            
            stateTextFeild.text = TaxPayerController.shared.arrayOfStates[row]
            stateTextFeild.resignFirstResponder()
        }
    }
    
    func hideSalary(){
     
        //Hourly
        
        HourlyButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        hoursLabel.text = "Hrs/Week"
        hourlyRateLabel.isHidden = false
        
        
        //salary
        salaryButton.setTitleColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1), for: .normal)
        dollarSign.isHidden = true
        salaryAmountLabel.isHidden = true
        enterHourlyButton.isHidden = false
    }
    
    func hideHours(){
        
        //Salarybutton
        salaryButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        dollarSign.isHidden = false
        salaryAmountLabel.isHidden = false
        
        //Hourlybutton
        HourlyButton.setTitleColor(#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1), for: .normal)
        hoursLabel.text = "Annually"
        hourlyRateLabel.isHidden = true
        enterHourlyButton.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
