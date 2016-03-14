//
//  AuthenticationState.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

struct AuthenticationState {
    var loggedInState: LoggedInState
}

enum LoggedInState {
    case NotLoggedIn
    case LoggedIn
}

protocol HasAuthenticationState {
    var authenticationState: AuthenticationState { get set }
}