//
//  SettingsViewController.swift
//  ComprasUSASwift
//
//  Created by Rafaela on 26/06/20.
//  Copyright © 2020 Rafaela. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var tfIOS: UITextField!
    @IBOutlet weak var tdStateTaxes: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOS.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tdStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOS.text!)
        tc.stateTax = tc.convertToDouble(tdStateTaxes.text!)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
