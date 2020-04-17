//
//  ViewController.swift
//  SimpleAlert
//
//  Created by uuzaza@naver.com on 04/18/2020.
//  Copyright (c) 2020 uuzaza@naver.com. All rights reserved.
//

import UIKit
import SimpleAlert
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionAlert(_ sender: Any) {
        if #available(iOS 13.0, *) {
            YYSimpleAlert(title: "와 이게 되네", confirm: "확인버튼도 커스텀할 수 있네") {
                print("completion handler 까지!?!")
            }.show(in: self.view)
        } else {
            // Fallback on earlier versions
        }
    }
}

