//
//  AuthenticationReducer.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//


import Foundation
import ReSwift
import Parse
import ParseFacebookUtilsV4

func authenticationReducer(let state: AuthenticationState?, action: Action) -> AuthenticationState {
    var state = state ?? initialAuthenticationState()
    
    switch action {
    case let action as UpdateLoggedInState:
        state.loggedInState = action.loggedInState
    default:
        break
    }
    
    return state
}

func initialAuthenticationState() -> AuthenticationState {
    return AuthenticationState(
        loggedInState: isLoggedIn() ? .LoggedIn : .NotLoggedIn
    );
}

func isLoggedIn() -> Bool {
    let currentUser = PFUser.currentUser()
    return !(currentUser == nil || !PFFacebookUtils.isLinkedWithUser(currentUser!))
}
