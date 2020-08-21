//
//  ViewController.swift
//  Example
//
//  Created by 张行 on 2020/8/21.
//  Copyright © 2020 张行. All rights reserved.
//

import UIKit
import ControllerCenter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pushModuleB() {
        let modify = ControllerCenter.make("ModuleB").parameter("didPushModuleCBlock", value: {
            print("didPushModuleCBlock")
        })
        modify.push(in: self.navigationController, animated: true)
    }
    
    @IBAction func presentModuleA() {
        ControllerCenter.make("ModuleA").parameter("backgroundColor", value: UIColor.red).present(in: self, animated: true, completion: nil)
    }

}

