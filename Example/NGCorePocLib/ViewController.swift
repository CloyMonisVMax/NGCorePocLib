//
//  ViewController.swift
//  NGCorePocLib
//
//  Created by Cloy Monis on 01/06/2022.
//  Copyright (c) 2022 Cloy Monis. All rights reserved.
//

import UIKit
import NGCorePocLib
import AppCenter
import AppCenterCrashes

let TAG = "NGCorePocLib"

class ViewController: UIViewController {

    @IBOutlet var labelAppDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let str = "Implementation of CI-CD from NGCorePoc version:\(NGCorePocMain.version)"
        self.labelAppDesc.text = str
        print("\(TAG):\(str)")
        let response = NGCorePocMain.compute(lhs: 4, rhs: 4)
        print("\(TAG):\(response)")
        AppCenter.start(withAppSecret: "a49284aa-0baa-4bb0-bfdf-cce513c0f397", services:[
          Crashes.self
        ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

