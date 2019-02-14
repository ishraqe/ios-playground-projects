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
    }
    @IBAction func colorBtnWaspreesed(sender: UIButton) {
        delegate?.userChoosedColor(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
