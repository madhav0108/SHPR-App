//
//  MainViewController.swift
//  SHPR
//
//  Created by madhav sharma on 7/1/20.
//  Copyright © 2020 madhav sharma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //creating a UIButton programmatically
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9286976457, green: 0.4638712406, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calulate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    @objc func calulate() {
        //checking for text inside the text fields
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            //checking for text to be numbers (type double)
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Brain.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

