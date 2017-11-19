//
//  RoundImage.swift
//  Day14_LayoutTest
//
//  Created by Riley Lee on 19/11/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

class RoundImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutIfNeeded()
        layer.cornerRadius = self.frame.size.width/10.0
        layer.masksToBounds = true
    }

}
