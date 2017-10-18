//
//  ColorPresenterVC.swift
//  Day12_ProtocolAndDelegateTheApp
//
//  Created by Riley Lee on 17/10/2017.
//  Copyright © 2017 Riley Lee. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withTitle colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }
}
