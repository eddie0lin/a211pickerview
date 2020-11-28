//
//  Page2ViewController.swift
//  a211pickerview
//
//  Created by Catherine Lin on 2020/11/28.
//

import UIKit

class Page2ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    var bid = ""
    var str = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("page2")
        label1.text = bid
        label2.text = str
    }
    



}
