//
//  NGCorePocMainTests.swift
//  NGCorePocLib_Tests
//
//  Created by Cloy Monis on 18/01/22.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import XCTest
import NGCorePocLib

class NGCorePocMainTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSuccess(){
        XCTAssertTrue(4 == NGCorePocMain.compute(lhs: 2, rhs: 2))
    }

}
