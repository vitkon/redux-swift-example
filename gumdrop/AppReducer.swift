//
//  AppReducer.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 08/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

import ReSwift
import ReSwiftRouter

struct AppReducer: Reducer {
    
    func handleAction(action: Action, state: AppState?) -> AppState {
        return AppState(
            navigationState: NavigationReducer.handleAction(action, state: state?.navigationState),
            authenticationState: authenticationReducer(state?.authenticationState, action: action)
        )
    }
    
}