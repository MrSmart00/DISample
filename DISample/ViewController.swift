//
//  ViewController.swift
//  DISample
//
//  Created by HINOMORI HIROYA on 2018/06/26.
//  Copyright © 2018年 HINOMORI HIROYA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var customView: CustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = CustomData(text: "TESTTEST")
        customView.data = data
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

