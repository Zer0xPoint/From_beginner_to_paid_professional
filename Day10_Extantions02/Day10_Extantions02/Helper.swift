//
//  Helper.swift
//  Day10_Extantions02
//
//  Created by Riley Lee on 14/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

func generateRandomNumber(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
