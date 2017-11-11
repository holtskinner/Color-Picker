//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Holt Skinner on 11/11/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let initialIndex = 0
    let colors: [(UIColor, String)] = [(.red, "Red"), (.orange, "Orange"), (.yellow, "Yellow"), (.green, "Green"), (.blue, "Blue"), (.purple, "Purple")]

    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPickerView: UIPickerView!


    override func viewDidLoad() {
        super.viewDidLoad()
        setColor(color: colors[initialIndex].0, text: colors[initialIndex].1)
        colorPickerView.selectRow(initialIndex, inComponent: 0, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setColor(color: UIColor, text: String) {
        self.view.backgroundColor = color
        colorLabel.text = text
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        setColor(color: colors[row].0, text: colors[row].1)
    }

}
