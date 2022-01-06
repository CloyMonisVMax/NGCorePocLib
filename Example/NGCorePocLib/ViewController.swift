//
//  ViewController.swift
//  NGCorePocLib
//
//  Created by Cloy Monis on 01/06/2022.
//  Copyright (c) 2022 Cloy Monis. All rights reserved.
//

import UIKit
import NGCorePocLib

class ViewController: UIViewController {

    @IBOutlet var labelAppDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelAppDesc.text = "Implementation of CI-CD from NGCorePoc version:\(NGCorePocMain.version)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

