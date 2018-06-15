//
//  MainViewController.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 1/2/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import UIKit


class MainViewController: UIViewController{
    
    
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
                }
                
            }
            
        }
        
        
    }
    
    //Constraints
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

extension MainViewController {
    //W-4 View
    //Hourly View
    
    
    func giveViewsBorders(){
        
        
        marriedView.layer.cornerRadius = 12
        marriedView.layer.borderWidth = 1.5
        marriedView.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        
        stateView.layer.cornerRadius = 12
        stateView.layer.borderWidth = 1.5
        stateView.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        
        FederalView.layer.cornerRadius = 12
        FederalView.layer.borderWidth = 1.5
        FederalView.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        
        StateAllowanceView.layer.cornerRadius = 12
        StateAllowanceView.layer.borderWidth = 1.5
        StateAllowanceView.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        
    }
    
    func bringOutW4ModalView(){
        
        UIView.animate(withDuration: 0.4) {
            self.view.addSubview(self.w4View)
            
        }
        blurView.isHidden = false
        w4View.center = view.center
        w4View.layer.cornerRadius = 15
        w4View.layer.shadowColor = UIColor.black.cgColor
        w4View.layer.shadowOpacity = 0.5
        w4View.layer.shadowOffset = CGSize.zero
        w4View.layer.shadowRadius = 5
        w4View.layer.cornerRadius = 8
        
    }
    
    func returnW4ModalView(){
        
        UIView.animate(withDuration: 0.4) {
            self.w4View.removeFromSuperview()
            self.blurView.isHidden = true
        }
    }
    
    func bringOutHourlyModalView(){
        
        UIView.animate(withDuration: 0.4) {
            self.view.addSubview(self.hourlyRateModalView)
            
        }
        blurView.isHidden = false
        hourlyRateModalView.center = view.center
        hourlyRateModalView.layer.cornerRadius = 15
        hourlyRateModalView.layer.shadowColor = UIColor.black.cgColor
        hourlyRateModalView.layer.shadowOpacity = 0.5
        hourlyRateModalView.layer.shadowOffset = CGSize.zero
        hourlyRateModalView.layer.shadowRadius = 5
        hourlyRateModalView.layer.cornerRadius = 8
    }
    
    func returnHourlyModalView(){
        UIView.animate(withDuration: 0.4) {
            self.hourlyRateModalView.removeFromSuperview()
            self.blurView.isHidden = true
        }
        
    }
    
}

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
        //hideSalarythings
        
        //Hourly
        
        HourlyButton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        hoursLabel.text = "Hours"
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
