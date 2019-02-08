//
//  Animations.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import UIKit

extension ReceiptViewController {
   //ModalView
    func bringOutModalView(){
        
        //blurryView.isHidden = false
        UIView.animate(withDuration: 0.4) {
            self.view.addSubview(self.taxBreakdownModalView)
            
        }
        
        blurryView.isHidden = false
        taxBreakdownModalView.center = view.center
        //taxBreakdownModalView.layer.cornerRadius = 15
        taxBreakdownModalView.layer.shadowColor = UIColor.black.cgColor
        taxBreakdownModalView.layer.shadowOpacity = 0.5
        taxBreakdownModalView.layer.shadowOffset = CGSize.zero
        taxBreakdownModalView.layer.shadowRadius = 5
        taxBreakdownModalView.layer.cornerRadius = 9
        
    }
    
    func removeModalView(){
        
        UIView.animate(withDuration: 0.4) {
            self.taxBreakdownModalView.removeFromSuperview()
            self.blurryView.isHidden = true
        }
    }
    
    //EditTaxViews
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
    
    //Tax cut animations
    func giveViewsBorders(){
        
        weeklyView.layer.cornerRadius = 12
        weeklyView.layer.borderWidth = 1.5
        weeklyView.layer.borderColor = #colorLiteral(red: 0.1882352941, green: 0.8078431373, blue: 0.9843137255, alpha: 1)
        
        biWeeklyView.layer.cornerRadius = 12
        biWeeklyView.layer.borderWidth = 1.5
        biWeeklyView.layer.borderColor = #colorLiteral(red: 0.1882352941, green: 0.8078431373, blue: 0.9843137255, alpha: 1)
        
        monthlyView.layer.cornerRadius = 12
        monthlyView.layer.borderWidth = 1.5
        monthlyView.layer.borderColor = #colorLiteral(red: 0.1882352941, green: 0.8078431373, blue: 0.9843137255, alpha: 1)
        
        annualView.layer.cornerRadius = 12
        annualView.layer.borderWidth = 1.5
        annualView.layer.borderColor = #colorLiteral(red: 0.1882352941, green: 0.8078431373, blue: 0.9843137255, alpha: 1)
        
    }
    
    //Loading vIews and Shape Layer
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
        timer = Timer.scheduledTimer(timeInterval: 1.6, target: self, selector: #selector(ReceiptViewController.shapeLayerHidden), userInfo: nil, repeats: false)
    }
    
    @objc func shapeLayerHidden(){
        shapeLayer.isHidden = true
        trackLayer.isHidden = true
        
        allDoneImage.isHidden = false
        receiptButton.isHidden = false
        removeViewButton.isHidden = false
        
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
