//
//  MainViewController.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 1/2/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import UIKit

import SpriteKit

class MainViewController: UIViewController{
    
  
    @IBOutlet var randomFactView: UIView!
    @IBOutlet weak var funFactTextLabel: UILabel!
    @IBOutlet weak var okFactButton: UIButton!
    @IBAction func okFactButtonPressed(_ sender: Any) {
        returnFactModalView()
    }
   
    //ShakedeviceForFact
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        bringRamdomModalView()
    }
    
    static let shared = MainViewController()
    var isHourlyPay : Bool = true
    let receipt = ReceiptViewController.shared
    let data = TaxPayerController.shared
    var single : Bool = true
    
    
    //W-4 Switches
    @IBOutlet weak var marriedSwitch: UISwitch!
    @IBAction func marriedSwitchToggled(_ sender: UISwitch) {
      
        if (sender.isOn == true) {
            single = false
        }else {
            single = true
            
        }
    }
    
    
    //ModalViews
    @IBOutlet var w4View: UIView!
    @IBOutlet var hourlyRateModalView: UIView!
    
    
    //BlurView
    @IBOutlet weak var blurView: UIView!
    
    //ModalViewsViews
    @IBOutlet weak var marriedView: UIView!
    @IBOutlet weak var stateView: UIView!
    @IBOutlet weak var FederalView: UIView!
    @IBOutlet weak var StateAllowanceView: UIView!
    
    //PickerViews
    @IBOutlet weak var hourlyPayPickerView: UIPickerView!
    var pickerView = UIPickerView()
    /// initalized2
    var hourlyPickerView = UIPickerView()
    @IBOutlet weak var hourlyRateDisplay: UILabel!
    
    
    //W-4TextViews
    @IBOutlet weak var stateTextFeild: UITextField!
    @IBOutlet weak var federalAllowanceTextFeild: UITextField!
    @IBOutlet weak var stateAllowanceTextFeild: UITextField!
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        returnW4ModalView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        marriedSwitch.isOn = false
        
        //Edits
        hideSalary()
        constrainButtons()
        giveViewsBorders()
        blurView.isHidden = true
        
        //PickerView
        pickerView.delegate = self
        pickerView.dataSource = self
        
        hourlyPayPickerView.delegate = self
        hourlyPayPickerView.dataSource = self
        
        hourlyPickerView.delegate = self
        hourlyPickerView.dataSource = self
        
        //TextFeild
        
        stateTextFeild.inputView = pickerView
        
        if let StateName = UserDefaults.standard.value(forKey: "state") as? String{
            stateTextFeild.text = StateName
        }
        
        if let federallAllowance = UserDefaults.standard.value(forKey: "federalAllowance") as? String{
            federalAllowanceTextFeild.text = federallAllowance
        }
        
    }
    @IBOutlet weak var amount: UIButton!
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var cancel: UIButton!
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var salaryAmountLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    
    @IBOutlet weak var HourlyButton: UIButton!
    @IBOutlet weak var salaryButton: UIButton!
    
    
    @IBOutlet weak var enterHourlyButton: UIButton!
    
    
    @IBOutlet weak var numberDigitLabel: UILabel!
    @IBOutlet weak var hourlyRateLabel: UILabel!
    @IBOutlet weak var hourlyAndSalaryView: UIStackView!
    @IBOutlet weak var taxButton: UIButton!
    
    
    @IBOutlet weak var buttonStackView: UIStackView!
    @IBOutlet weak var numberPadStackView: UIStackView!
    @IBOutlet weak var dollarSign: UILabel!
    
    
    @IBAction func HoourlyButtonTapped(_ sender: Any) {
        
        hideSalary()
        
    }
    @IBAction func salaryButtonTapped(_ sender: Any) {
        
        hideHours()
    }
    
    @IBAction func enterHourlyButtonTapped(_ sender: Any) {
        //bring out hourlt calculator stack view
        
        bringOutHourlyModalView()
    }
    
    @IBAction func taxButtontapped(_ sender: Any) {
        bringOutW4ModalView()
    }
    @IBAction func cancelButtontapped(_ sender: Any) {
        returnW4ModalView()
    }
    @IBAction func cancelButtonOnHourlyModalViewPresed(_ sender: Any) {
        returnHourlyModalView()
    }
    @IBAction func saveButtonOnHourlymodalViewPressed(_ sender: Any) {
        hourlyRateLabel.text = hourlyRateDisplay.text
        returnHourlyModalView()
    }
    
    
    
    @IBAction func OneButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "1"
        }else {
            let number = String(1)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
        
    }
    @IBAction func TwoButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "2"
        }else {
            let number = String(2)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func threeButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "3"
        }else {
            let number = String(3)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func fourButtonPressed(_ sender: Any) {
        
        
        if numberLabel.text == "0" {
            numberLabel.text = "4"
        }else {
            let number = String(4)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func fiveButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "5"
        }else {
            let number = String(5)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func sixButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "6"
        }else {
            let number = String(6)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func sevenButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "7"
        }else {
            let number = String(7)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func eightButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "8"
        }else {
            let number = String(8)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func nineButtonPressed(_ sender: Any) {
        if numberLabel.text == "0" {
            numberLabel.text = "9"
        }else {
            let number = String(9)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        }
    }
    @IBAction func zeroButtonPressed(_ sender: Any) {
        
        if numberLabel.text != "0" {
            let number = String(0)
            let textCurrentltyInDisplay = numberLabel.text
            numberLabel.text = textCurrentltyInDisplay! + number
        } else {
            return
        }
    }
    
    @IBAction func dotbuttonPressed(_ sender: Any) {
        
        if numberLabel.text != "0" {
            //numberLabel.text = "."
            //check if it does not contain ".", if it does, return
            let number = "."
            
            let textCurrentltyInDisplay = numberLabel.text
            
            if (textCurrentltyInDisplay?.contains("."))!{
                numberLabel.text = textCurrentltyInDisplay!
            }else {
                numberLabel.text = textCurrentltyInDisplay! + number
            }
        }else {
            return
        }
    }
    //cancelButton90
    @IBAction func cancelButtonPressed(_ sender: Any) {
        numberLabel.text = "0"
    }
    
    let currencyFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        return numberFormatter
    }()
    
    let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter
    }()
    
    @IBAction func hoursButtonPressed(_ sender: Any) {
        
        guard let hourlyRateText = self.hourlyRateLabel.text,
            let hourlyRate = currencyFormatter.number(from: hourlyRateText),
            let hourlyRateString = numberFormatter.string(from: hourlyRate),
            let hourlyRateAsNumber = numberFormatter.number(from: hourlyRateString),
            let hourlyPayAsDouble = Double(exactly: hourlyRateAsNumber)
            else { return }
        
        data.socialSecurityTax = 0.00
        data.federalIncomeTax = 0.00
        data.medicAidTax = 0.00
        data.utahStateTax = 0.00
        
        //HourlyPay
        let hourlyPay = hourlyPayAsDouble
        //Hours
        guard let hours = Double(numberDigitLabel.text!) else {return}
        //State
        guard let state = self.stateTextFeild.text else { return }
        
        //unwrapping the allowances
        guard let federalAllowance = Int(federalAllowanceTextFeild.text!) else {return}
        guard let stateAllowance = Int(stateAllowanceTextFeild.text!) else {return}
        
        UserDefaults.standard.set(state, forKey: "state")
        UserDefaults.standard.set(String(federalAllowance), forKey: "federalAllowance")
        UserDefaults.standard.set(String(stateAllowance), forKey: "stateAllowance")
        
        
        //Setting Allowances to thier taxController variables
        TaxPayerController.shared.federalAllowance = federalAllowance
        TaxPayerController.shared.stateAllowance = stateAllowance
        
        
        if hourlyRateLabel.isHidden == false{
            TaxPayerController.shared.isHourlyPay = true
            //Then this is definatly HourlyPay
            TaxPayerController.shared.hourlyPay = hourlyPay
            
            //weeklyPayCheck ()
            
            if marriedSwitch.isOn == true {
                //HourlyPayAndMarried
                
                if TaxPayerController.shared.arrayOfStatesWithNoTaxes.contains(state){
                    //HourlyPay,Married,StateWithNoTax
                    TaxPayerController.shared.calculateAmountForMarriedWithoutStateTaxes(hours: hours)
                    
                }else{
                    //HourlyPay,Married,StateWith
                    TaxPayerController.shared.calculateAmountForMarried(hours: hours)
                }
                
            }else{
                //HourlyPayAndSingle
                //but Don't know thier state
                
                if TaxPayerController.shared.arrayOfStatesWithNoTaxes.contains(state){
                    //HourlyPay,Single,StateWithNoTax
                    
                    TaxPayerController.shared.calculateAmountForSingleWithoutStateTax(hours: hours)
                    
                }else{
                    //HourlyPay,Single,StateWithTax
                    TaxPayerController.shared.calculateAmountForSingle(hours: hours)
                }
                
            }
            
        } else {
            //This is definatly salaryPay
            TaxPayerController.shared.isHourlyPay = false
            
            TaxPayerController.shared.hourlyPay = 1.00
            if marriedSwitch.isOn == true {
                //SalaryAndMarried
                
                if TaxPayerController.shared.arrayOfStatesWithNoTaxes.contains(state){
                    //Salary,Married,StateWithNoTax
                    
                    TaxPayerController.shared.CalculateAmountForMarriedSALARYWithNOStateTaxes(hours: hours)
                }else{
                    //Salary,Married,StateWithTax
                    TaxPayerController.shared.CalculateAmountForMarriedSALARY(hours: hours)
                }
                
            }else{
                //SalaryAndSingle
                //but Don't know thier state
                
                if TaxPayerController.shared.arrayOfStatesWithNoTaxes.contains(state){
                    //Salary,Single,StateWithNoTax
                    
                    TaxPayerController.shared.CalculateAmountForSingleSalaryWithNoStateTaxes(hours: hours)
                    
                    
                }else{
                    //Salary,Single,StateWithTax
                    TaxPayerController.shared.CalculateAmountForSingleSalary(hours: hours)
                }}}}}
