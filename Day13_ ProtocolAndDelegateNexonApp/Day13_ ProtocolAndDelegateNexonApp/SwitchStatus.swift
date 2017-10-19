//
//  SwitchStatus.swift
//  Day13_ ProtocolAndDelegateNexonApp
//
//  Created by Riley Lee on 19/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import Foundation
import UIKit

enum SwitchStatus: Togglable{
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
