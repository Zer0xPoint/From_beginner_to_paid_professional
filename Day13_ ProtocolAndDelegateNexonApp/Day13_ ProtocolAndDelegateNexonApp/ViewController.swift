//
//  ViewController.swift
//  Day13_ ProtocolAndDelegateNexonApp
//
//  Created by Riley Lee on 19/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchLbl: UILabel!
    @IBOutlet weak var switchBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func switchBtnWasPressed(_ sender: Any) {
        
        switchStatus.toggle()
        
        if switchStatus == .off {
            switchBtn.setImage(UIImage(named: "offBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            switchLbl.text = "👶🏿OFF👶🏿"
            switchLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            switchBtn.setImage(UIImage(named: "onBtn"), for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            switchLbl.text = "👦ON👦"
            switchLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        }
    }
}
