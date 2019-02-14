//
//  ViewController.swift
//  Colorchanger
//
//  Created by Ishraqe Manjur on 14/2/19.
//  Copyright © 2019 Ishraqe Manjur. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTranasferDelegates {

    @IBOutlet weak var colorPickerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userChoosedColor(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorPickerLabel.text = colorName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colorPresenterSeg" {
            guard let colorPickerVC = segue.destination as?
                ColorPickerVCViewController else { return }
            colorPickerVC.delegate = self
        }
    }


}

