//
//  ViewController.swift
//  NGCorePocLib
//
//  Created by Cloy Monis on 01/06/2022.
//  Copyright (c) 2022 Cloy Monis. All rights reserved.
//

import UIKit
import NGCorePocLib
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

