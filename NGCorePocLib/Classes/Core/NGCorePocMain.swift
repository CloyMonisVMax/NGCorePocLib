//
//  NGCorePocMain.swift
//  NGCorePocLib
//
//  Created by Cloy Monis on 06/01/22.
//
import Foundation
import VMaxAdsSDK

public class NGCorePocMain{
    
    public static let version = "0.0.9"
    public static var basic: Int!
    
    public static func compute(lhs: Int, rhs:Int) -> Int{
        return lhs + rhs
    }
    
    public static func computeSome(){
        let _ = VMaxAdView(adspotID: "asa", viewController: UIViewController(), withAdUXType: .banner)
        print("SDK will crash")
        var val = 2
        val += basic
    }
    
}
