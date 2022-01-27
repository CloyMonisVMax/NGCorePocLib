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
    var forceWrapCrash: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,let buildNumber = Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as? String else {
            //btn.titleLabel?.text = "Click to action \(appVersion)(\(buildNumber))"
            self.labelAppDesc.text = "Empty Version"
            return
        }
        let str = "Implementation of CI-CD from NGCorePoc version:\(NGCorePocMain.version) AppVersion:\(appVersion)(\(buildNumber))"
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
    
    @IBAction func actionCrashFromApp(_ sender: Any) {
        print("will crash now")
        let val = 2 + forceWrapCrash
        print(val)
    }
    
    @IBAction func actionCrashFromSDK(_ sender: Any) {
        print("actionCrashFromSDK")
        NGCorePocMain.computeSome()
    }
    
}

