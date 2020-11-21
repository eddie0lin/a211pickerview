//
//  ViewController.swift
//  a211pickerview
//
//  Created by Catherine Lin on 2020/11/21.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {


    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        
    }
    
    //MARK: PickerView DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 5
        case 1:
            return 8
        default:
            return 0
        }
        
    }
    //MARK: PickerView Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "column:\(component),row:\(row)"
    }

}

