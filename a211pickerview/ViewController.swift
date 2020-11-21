//
//  ViewController.swift
//  a211pickerview
//
//  Created by Catherine Lin on 2020/11/21.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    var astrological = ["請選擇你的星座","牡羊","金牛","雙子","巨蟹","獅子","處女","天秤","天蠍","射手","摩羯","水瓶","雙魚"]
    var bloodType = ["請選擇你的血型","A","B","O","AB"]
    
    
    
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
            return astrological.count
        case 1:
            return bloodType.count
        default:
            return 3
        }
    }
    
    //MARK: PickerView Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloodType[row]
        default:
            return ""
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            print(astrological[row])
        case 1:
            print(bloodType[row])
        default:
            break
        }
        
        if pickerView.selectedRow(inComponent: 0) != 0
            && pickerView.selectedRow(inComponent: 1) != 0{
            print("計算：\(astrological[pickerView.selectedRow(inComponent:0)]),\(bloodType[pickerView.selectedRow(inComponent:1)])")
        }else{
            print("not yet")
        }
    
}

}
