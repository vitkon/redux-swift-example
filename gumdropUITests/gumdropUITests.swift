//
//  gumdropUITests.swift
//  gumdropUITests
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

import XCTest

class gumdropUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        
        super.setUp()
        continueAfterFailure = false
        
        app.launch()
    }
    
    
    override func tearDown() {
        super.tearDown()
    }
    

//    func test1() {
//       XCUIApplication().buttons["Main Screen"].tap()
//        //XCTAssertEqual(store.state.authenticationState.LoggedIn, .LoggedIn)
//    }

    
}

