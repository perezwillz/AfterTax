//
//  HourlyViewController.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 2/9/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import UIKit

class ReceiptViewController: UIViewController {
    
    static let shared = ReceiptViewController()
    
    let arrayOfLoadingLabels  = ["Caluculating federal income tax..","Caluculating state taxes..","Caluculating Allowances..","All done."]
    
    var label = TaxPayerController.shared.arrayOfLoadingLabels[0]
    var cash : Double = 0.00
    
    //TaxBreakModalView
    
    @IBOutlet weak var taxCutButton: UIButton!
    @IBOutlet var taxBreakdownModalView: UIView!
    @IBOutlet weak var weeklyView: UIView!
    @IBOutlet weak var biWeeklyView: UIView!
    @IBOutlet weak var monthlyView: UIView!
    @IBOutlet weak var annualView: UIView!
    
    @IBOutlet weak var weeklyPay: UILabel!
    @IBOutlet weak var biWeeklyPay: UILabel!
    @IBOutlet weak var monthlyPay: UITextField!
    @IBOutlet weak var annualPay: UITextField!
    
    
    
    @IBOutlet weak var blurryView: UIView!
    
    
    
    
    
    
    @IBAction func taxCutButton(_ sender: Any) {
        bringOutModalView()
    }
    
    @IBAction func cancelModalButton(_ sender: Any) {
        removeModalView()
    }
    
    
    var timer = Timer()
    var index = 0
    let shapeLayer = CAShapeLayer()
    let trackLayer = CAShapeLayer()
    @IBOutlet weak var losdingView: UIView!
    @IBOutlet weak var centerView: UIView!
    
    
    @IBOutlet weak var federalIncomeView: UIView!
    @IBOutlet weak var stateTax: UIView!
    @IBOutlet weak var socialSecurity: UIView!
    @IBOutlet weak var medicAid: UIView!
    
    //ViewsToConstrainedProgrammatically
    @IBOutlet weak var allTaxesStackView: UIStackView!
    @IBOutlet weak var receiptStackView: UIStackView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var w4View: UIButton!
    
    @IBOutlet weak var receiptstackView: UIStackView!
    
    //AnimationImagesandLabels
    
    @IBOutlet weak var allDoneImage: UIImageView!
    @IBOutlet weak var calculationUpdateLabel: UILabel!
    @IBOutlet weak var receiptButton: UIButton!
    @IBOutlet weak var removeViewButton: UIButton!
    
    @IBAction func removeViewButtonClicked(_ sender: Any) {
        losdingView.isHidden = true
    }
    
    
    @IBAction func receiptButtonPressed(_ sender: Any) {
        losdingView.isHidden = true
    }
    
    //updatingView
    @IBOutlet weak var afterTax: UILabel!
    @IBOutlet weak var beforeTax: UILabel!
    @IBOutlet weak var federalTaxField: UITextField!
    @IBOutlet weak var stateTaxField: UITextField!
    @IBOutlet weak var socialSecurityTaxfield: UITextField!
    @IBOutlet weak var medicAidTaxFeild: UITextField!
    
    //functions to give arrow buttons shadows
    
    func giveRemoveViewbuttonShadows(){
        removeViewButton.layer.shadowColor = UIColor.black.cgColor
        removeViewButton.layer.shadowOpacity = 0.5
        removeViewButton.layer.shadowOffset = CGSize.zero
        removeViewButton.layer.shadowRadius = 1.1
    }
    
    func giveTaxCutButtonsShadows(){
        taxCutButton.layer.shadowColor = UIColor.black.cgColor
        taxCutButton.layer.shadowOpacity = 0.5
        taxCutButton.layer.shadowOffset = CGSize.zero
        taxCutButton.layer.shadowRadius = 4
    }
    
    func makeTaxCutButtonBounce(){
        UIView.animate(withDuration: 1,  delay: 0, options:  [.allowUserInteraction], animations: {
            self.taxCutButton.frame.origin.y -= 15
        }) {_ in
            UIView.animate(withDuration: 1,  delay: 0, options:  [.allowUserInteraction], animations: {
                self.taxCutButton.frame.origin.y += 15
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constrainButtons()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       //  makeTaxCutButtonBounce()
        animateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        rotateView()
        editViews()
        removeShapeLayer()
        
        giveRemoveViewbuttonShadows()
        giveTaxCutButtonsShadows()
        
        
        //FIX ME- Make button able to work even when its bouncing
        //makeTaxCutButtonBounce()
        
        //Constraints for some views
        NSLayoutConstraint(item: taxCutButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.92, constant: 1).isActive = true
        dismissViewAfter7seconds()
        editTaxViews()
        
        constrainButtons()
        giveViewsBorders()
        
        //numberFormater
        let numberFormeter = NumberFormatter()
        numberFormeter.numberStyle = .currency
        numberFormeter.locale = Locale(identifier: "en_US")
      
        
        
        //cashAfterTax
        let cashAfterTax = NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax)
        guard let cashAfterTaxString = numberFormeter.string(from: cashAfterTax) else { return }
        
        //cashBeforeTax
        let cashBeforeTax = NSNumber(floatLiteral: TaxPayerController.shared.cashBeforeTaxes)
        guard let cashBeforeTaxString = numberFormeter.string(from: cashBeforeTax) else { return }
        
        //FederalIncomeTax
        let federalIncome = NSNumber(floatLiteral: TaxPayerController.shared.federalIncomeTax)
        guard let federalIncomeString = numberFormeter.string(from: federalIncome) else { return }
        
        //StateTax
        let stateTax = NSNumber(floatLiteral: TaxPayerController.shared.utahStateTax)
        guard let stateTaxString = numberFormeter.string(from: stateTax) else { return }
        
        //SocialSecurity
        let socialSecurityTax = NSNumber(floatLiteral: TaxPayerController.shared.socialSecurityTax)
        guard let socialSecurityTaxString = numberFormeter.string(from: socialSecurityTax) else { return }
        
        //MedicAidTaxFeild
        let medicAidTax = NSNumber(floatLiteral: TaxPayerController.shared.medicAidTax)
        guard let medicAidTaxString = numberFormeter.string(from: medicAidTax) else { return }
        
        afterTax.text = cashAfterTaxString
        beforeTax.text = cashBeforeTaxString
        federalTaxField.text = federalIncomeString
        stateTaxField.text = stateTaxString
        socialSecurityTaxfield.text = socialSecurityTaxString
        medicAidTaxFeild.text = medicAidTaxString
        
        if TaxPayerController.shared.isHourlyPay == true{
            
            let weekly = NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax * 1.0)
            guard let weeklyString = numberFormeter.string(from: weekly) else { return }
            
            let biWeekly =  NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax * 2.0)
            guard let biWeeklyString = numberFormeter.string(from: biWeekly) else { return }
            
            let monthly =  NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax * 4.0)
            guard let monthlyString = numberFormeter.string(from: monthly) else { return }
            
            let yearly =  NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax * 52.0)
            guard let yearlyString = numberFormeter.string(from: yearly) else { return }
            
            
            weeklyPay.text = weeklyString
            biWeeklyPay.text = biWeeklyString
            monthlyPay.text = monthlyString
            annualPay.text = yearlyString
            
        
            
        }else {
            print("This is salary")
            let weekly = NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax / 52.0)
            guard let weeklyString = numberFormeter.string(from: weekly) else { return }
            
            let biWeekly =  NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax / 24.0)
            guard let biWeeklyString = numberFormeter.string(from: biWeekly) else { return }
            
            let monthly =  NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax / 12.0)
            guard let monthlyString = numberFormeter.string(from: monthly) else { return }
            
            let yearly =  NSNumber(floatLiteral: TaxPayerController.shared.cashAfterTax * 1.0)
            guard let yearlyString = numberFormeter.string(from: yearly) else { return }
            
            weeklyPay.text = weeklyString
            biWeeklyPay.text = biWeeklyString
            monthlyPay.text = monthlyString
            annualPay.text = yearlyString
            
            print("Your weekly paycheck is \(weeklyString)")
            print("Your Bi-weekly paycheck is \(biWeeklyString)")
            print("Your Monthly paycheck is \(monthlyString)")
            print("Your yearly paycheck is \(yearlyString)")
            
            print(weeklyString)
            print(biWeeklyString)
            print(monthlyString)
            print(yearlyString)
        }
        
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    }
