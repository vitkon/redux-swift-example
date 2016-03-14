//
//  AuthenticationActions.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

import Foundation
import ReSwift
import ReSwiftRouter
import FBSDKLoginKit
import ParseFacebookUtilsV4


func authenticateUser(state: AppState, store: Store<AppState>) -> Action? {
    let fbPermissions = ["public_profile", "email", "user_friends", "user_photos"]
    let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
    fbLoginManager.logInWithReadPermissions(fbPermissions) { (result, error) -> Void in
        if (error == nil && result.isCancelled != true) {
            if(result.grantedPermissions.contains("email")) {
                PFFacebookUtils.logInInBackgroundWithAccessToken(FBSDKAccessToken.currentAccessToken())
                store.dispatch(UpdateLoggedInState(loggedInState: .LoggedIn))
                store.dispatch(SetRouteAction([feedRoute]))
            }
        } else {
            // stay on login
        }
    }
    
    return nil
}

struct UpdateLoggedInState: Action {
    let loggedInState: LoggedInState
}