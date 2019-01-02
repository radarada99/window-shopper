//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Jon Huynh on 12/28/18.
//  Copyright © 2018 Jon Huynh. All rights reserved.
//

import UIKit

@IBDesignable // this paired with the customizeView() function we created allows you to see your designs made in code, updated into your interface builder
class CurrencyTxtField: UITextField {
    
    // don't ever implement this function if it is empty
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20 // Have to us CGFloats when drawing (not Doubles)
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8869858384, green: 0.8817126751, blue: 0.8910395503, alpha: 0.7985070634)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current // this is the default, sets the currency to wherever the device is physically located
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.9961721301, green: 0.9902489781, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true // major key to include this here and in draw(Rect) because it lets the rounded corners stay happening
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
