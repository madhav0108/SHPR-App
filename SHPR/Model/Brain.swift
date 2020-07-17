//
//  Brain.swift
//  SHPR
//
//  Created by madhav sharma on 7/1/20.
//  Copyright © 2020 madhav sharma. All rights reserved.
//

import Foundation

class Brain {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
