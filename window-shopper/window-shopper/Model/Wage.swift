//
//  Wage.swift
//  window-shopper
//
//  Created by Jon Huynh on 12/31/18.
//  Copyright © 2018 Jon Huynh. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
