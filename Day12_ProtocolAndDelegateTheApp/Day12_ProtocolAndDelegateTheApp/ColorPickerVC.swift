//
//  ColorPickerVC.swift
//  Day12_ProtocolAndDelegateTheApp
//
//  Created by Riley Lee on 17/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate: ColorTransferDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorBtnWasPressed(sender: UIButton) {
        delegate?.userDidChoose(color: sender.backgroundColor!, withTitle: (sender.titleLabel?.text)!)
        self.navigationController?.popViewController(animated: true)
    }
}
