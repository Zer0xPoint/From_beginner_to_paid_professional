//
//  ColorTransferDelegate.swift
//  Day12_ProtocolAndDelegateTheApp
//
//  Created by Riley Lee on 18/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color: UIColor, withTitle colorName: String)
}
