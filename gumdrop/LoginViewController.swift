//
//  ViewController.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftRouter
import FBSDKLoginKit

class LoginViewController: UIViewController, StoreSubscriber {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self) { state in
            state.authenticationState
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        store.unsubscribe(self)
    }
    
    func newState(state: AuthenticationState) {
    }
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func onLoginButtonTap(sender: AnyObject) {
        store.dispatch(authenticateUser)
    }
}

