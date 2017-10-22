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
    @IBOutlet weak var reflashColorBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withTitle colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }

    func detectColor(randomNumberArray: [CGFloat]) -> String {
        if randomNumberArray[0] > randomNumberArray[1] && randomNumberArray[0] > randomNumberArray[2] {
            return "Somecolor"
        } else if randomNumberArray[1] > randomNumberArray[0] && randomNumberArray[1] > randomNumberArray[2] {
            return "Somecolor"
        } else if randomNumberArray[2] > randomNumberArray[0] && randomNumberArray[2] > randomNumberArray[1] {
            return "Somecolor"
        } else {return "Dont Regenize" }
    }
     
    @IBAction func userDidPressReflashColorBtn(_ sender: Any) {
        let randomNumberArray = generateRandomNumberArray(quantity: 3)
        let randomColor = UIColor(red: randomNumberArray[0]/255, green: randomNumberArray[1]/255, blue: randomNumberArray[2]/255, alpha: 1.0)
        UIView.animate(withDuration: 0.5, animations: {
            self.view.backgroundColor = randomColor
//            if randomNumberArray[0] >= randomNumberArray[1] && randomNumberArray[0] >= randomNumberArray[2] {
//                self.colorNameLbl.text = "Red"
//            } else if randomNumberArray[1] >= randomNumberArray[0] && randomNumberArray[1] >= randomNumberArray[2] {
//                self.colorNameLbl.text = "Green"
//            } else {
//                self.colorNameLbl.text = "Blue"
//            }
            })
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let colorPickerVC = segue.destination as? ColorPickerVC else { return }
            colorPickerVC.delegate = self
        }
    }
}
