//
//  ViewController.swift
//  XibFrame
//
//  Created by 施峰磊 on 2020/1/11.
//  Copyright © 2020 施峰磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.colorView.backgroundColor = UIColor.hexa(value: "41B39C", a: 1)
        self.colorView.backgroundColor = UIColor.hexa(value: 0x41B39C, a: 1)
    }

    @IBAction func didClick(_ sender: UIControl) {
        self.button.backgroundColor = UIColor.red;
        self.button.isEnabled = !self.button.isEnabled
        
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        print(sender.cText ?? "no")
    }
}

