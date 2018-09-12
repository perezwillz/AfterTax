//
//  HourlyViewController.swift
//  AfterTax
//
//  Created by Riccardo Washington on 2/9/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import UIKit

class ReceiptViewController: UIViewController {
    
    static let shared = ReceiptViewController()
    
    let arrayOfLoadingLabels  = ["Caluculating federal income tax..","Caluculating state taxes..","Caluculating Allowances..","All done."]
    
    var label = TaxPayerController.shared.arrayOfLoadingLabels[0]
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dismissViewAfter7seconds()
        editTaxViews()
        
        constrainButtons()
        
        //numberFormater
        let numberFormeter = NumberFormatter()
        numberFormeter.numberStyle = .currency
        
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
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        animateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        rotateView()
        editViews()
        removeShapeLayer()
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func rotateView(){
        print("TRYING TO ANIMATE")
        //Rotating loading indicator
        
        let x = centerView.bounds.size.width / 2
        let y = centerView.bounds.size.height / 2
        
        let center = CGPoint(x: x, y: y)
        
        
        // create track layer
        let circularPath = UIBezierPath(arcCenter: center, radius: 45, startAngle: -CGFloat.pi / 2 , endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = #colorLiteral(red: 0.4901137948, green: 0.9938772321, blue: 0.4987213612, alpha: 1)
        trackLayer.lineWidth = 7
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound
        centerView.layer.addSublayer(trackLayer)
        
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        shapeLayer.lineWidth = 15
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = kCALineCapRound
        
        
        shapeLayer.strokeEnd = 0
        
        centerView.layer.addSublayer(shapeLayer)
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.duration = 3
        
        basicAnimation.toValue = 1
        
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "basic")
        
        
    }
    
    func editViews(){
        
        timer = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(ReceiptViewController.changeLabel), userInfo: nil, repeats: true)
    }
    
    @objc func changeLabel(){
        index += 1
        
        if index <= 3 {
            calculationUpdateLabel.text = TaxPayerController.shared.arrayOfLoadingLabels[index]
        }else {
            return
        }
    }
    
    func removeShapeLayer(){
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(ReceiptViewController.shapeLayerHidden), userInfo: nil, repeats: false)
    }
    
    @objc func shapeLayerHidden(){
        shapeLayer.isHidden = true
        trackLayer.isHidden = true
        
        allDoneImage.isHidden = false
        receiptButton.isHidden = false
        
    }
    
    func animateViews(){
        UIView.animate(withDuration: 10) {
        }
    }
    
    
    func dismissViewAfter7seconds(){
        timer = Timer.scheduledTimer(timeInterval: 7.5, target: self, selector: #selector(ReceiptViewController.hideLoadingView), userInfo: nil, repeats: false)
    }
    
    @objc func hideLoadingView(){
        losdingView.isHidden = true
        
    }
    
}

//EditingTaxViews
extension ReceiptViewController{
    func editTaxViews(){
        federalIncomeView.layer.cornerRadius = 12
        federalIncomeView.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        federalIncomeView.layer.borderWidth = 1.5
        
        socialSecurity.layer.cornerRadius = 12
        socialSecurity.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        socialSecurity.layer.borderWidth = 1.5
        
        stateTax.layer.cornerRadius = 12
        stateTax.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        stateTax.layer.borderWidth = 1.5
        
        medicAid.layer.cornerRadius = 12
        medicAid.layer.borderColor = #colorLiteral(red: 0.2078431373, green: 0.7215686275, blue: 0.1411764706, alpha: 1)
        medicAid.layer.borderWidth = 1.5
        
    }
    
}

extension ReceiptViewController {
    func constrainButtons(){
        
        //TaxStackView
        
        allTaxesStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 0.93599, constant: 0).isActive = true
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.40, constant: 0).isActive = true
        
        NSLayoutConstraint(item: allTaxesStackView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.9, constant: 0).isActive = true
        
        //ReceiptStackView
        
        receiptStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: receiptStackView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        
        
        NSLayoutConstraint(item: receiptStackView, attribute: .bottom, relatedBy: .equal, toItem: allTaxesStackView, attribute: .bottom, multiplier: 0.98, constant: 0).isActive = true
        
        NSLayoutConstraint(item: receiptStackView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.35, constant: 0).isActive = true
        
        NSLayoutConstraint(item: receiptStackView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.9, constant: 0).isActive = true
        
        
        federalIncomeView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
