//
//  ViewController.swift
//  Day10_Extantions02
//
//  Created by Riley Lee on 27/09/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorizeBtn: UIButton!
    
    @IBOutlet weak var wiggleBtn: UIButton!
    
    @IBOutlet weak var dimBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func colorizeBtnWasPressed(_ sender: Any) {
        colorizeBtn.colorize()
    }
    
    @IBAction func wiggleBtnWasPressed(_ sender: Any) {
        wiggleBtn.wiggle()
    }
    
    @IBAction func dimBtnWasPressed(_ sender: Any) {
        dimBtn.dim()
    }
    
}

