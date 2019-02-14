//
//  ColorPickerVCViewController.swift
//  Colorchanger
//
//  Created by Ishraqe Manjur on 14/2/19.
//  Copyright © 2019 Ishraqe Manjur. All rights reserved.
//

import UIKit

class ColorPickerVCViewController: UIViewController {

    var delegate: ColorTranasferDelegates? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.userChoosedColor(color: <#T##UIColor#>, withName: <#T##String#>)
        // Do any additional setup after loading the view.
    }
    @IBAction func colorBtnWaspreesed(sender: UIButton) {
        print(sender.titleLabel?.text)
    }
}
