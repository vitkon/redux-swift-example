//
//  AppState.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//


import Foundation
import ReSwift
import ReSwiftRouter

struct AppState: StateType, HasNavigationState, HasAuthenticationState {
    var navigationState: NavigationState
    var authenticationState: AuthenticationState
}

protocol HasNavigationState {
    var navigationState: NavigationState { get set }
}