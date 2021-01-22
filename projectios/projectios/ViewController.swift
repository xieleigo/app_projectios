//
//  ViewController.swift
//  projectios
//
//  Created by asdc on 2021/1/22.
//

import UIKit
import LXComponentA

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let componentAString = LXComponentAModel.testString
        print(componentAString)
        
        let task = LXComponentAModel.download(LXComponentAModel.init())
        print("task = \(String(describing: task))")
    }

}

