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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didClick(_ sender: UIControl) {
        self.button.backgroundColor = UIColor.red;
        self.button.isEnabled = !self.button.isEnabled
        
    }
    
}

