//
//  GenerateRandowNumber.swift
//  Day12_ProtocolAndDelegateTheApp
//
//  Created by Riley Lee on 18/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

func generateRandomNumberArray(quantity: Int) -> [CGFloat]{
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
