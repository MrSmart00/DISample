//
//  CustomView.swift
//  DISample
//
//  Created by HINOMORI HIROYA on 2018/06/26.
//  Copyright © 2018年 HINOMORI HIROYA. All rights reserved.
//

import UIKit

class CustomView: UIView {

    let label: UILabel
    let button: UIButton
    var data: CustomData? {
        didSet {
            label.text = data?.text
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        label = UILabel(frame: .zero)
        button = UIButton(type: .custom)
        super.init(coder: aDecoder)
        label.frame = CGRect(x: 5, y: 5, width: 100, height: 25)
        button.frame = CGRect(x: 5, y: 5, width: frame.size.width - 10, height: frame.size.height - 10)
        button.addTarget(self, action: #selector(tappedButton(sender:)), for: .touchUpInside)
        addSubview(label)
        addSubview(button)
    }
    
    @objc func tappedButton(sender: Any?) {
        if let dt = data {
            dt.output()
        }
    }
}
