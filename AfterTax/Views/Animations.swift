//
//  Animations.swift
//  AfterTax
//
//  Created by Perez Willie Nwobu on 8/25/18.
//  Copyright © 2018 Perez Willie Nwobu. All rights reserved.
//

import Foundation
import UIKit

extension MainViewController {
    
    //Shaking devicd for Random facts
    func randomFactMaker() ->(String){
        let randomIndex = Int(arc4random_uniform(UInt32(data.arrayOfFacts.count)))
        let randomFact = data.arrayOfFacts[randomIndex]
        print(randomFact)
        return randomFact
    }

    //BringOutRandomFactModalView
    func bringRamdomModalView(){
        let randomFact = randomFactMaker()
        funFactTextLabel.text = randomFact
        
        UIView.animate(withDuration: 0.4) {
            self.view.addSubview(self.randomFactView)
            
        }
        blurView.isHidden = false
        randomFactView.center = view.center
        randomFactView.layer.cornerRadius = 15
        randomFactView.layer.shadowColor = UIColor.black.cgColor
        randomFactView.layer.shadowOpacity = 0.5
        randomFactView.layer.shadowOffset = CGSize.zero
        randomFactView.layer.shadowRadius = 5
        randomFactView.layer.cornerRadius = 8
    }
    
    //ReturnFactModalView
    func returnFactModalView(){
        UIView.animate(withDuration: 0.4) {
            self.randomFactView.removeFromSuperview()
            self.blurView.isHidden = true
        }
    }
    
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

