//
//  CurrencyTextField.swift
//  SHPR
//
//  Created by madhav sharma on 7/1/20.
//  Copyright © 2020 madhav sharma. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 35
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        //implement draw rect, include clipsToBounds
        currencyLbl.clipsToBounds = true
        //adding the currency symbol to the UILabel
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        //currency symbol of the current location
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }

    override func prepareForInterfaceBuilder() {
        cutomizeView()
    }
    override func awakeFromNib() {
        cutomizeView()
    }
    
    //to view the app's interface with programmatic customization
    //on storyboard in real time
    func cutomizeView() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        //implement draw rect, include clipsToBounds
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
