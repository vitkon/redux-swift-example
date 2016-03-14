//
//  Routes.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 09/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

import UIKit
import ReSwiftRouter

//struct Routes {
//    let LoginViewControllerIdentifier = "LoginViewController"
//    let FeedViewControllerIdentifier = "FeedViewController"
//    let RewardsViewControllerIdentifier = "RewardsViewController"
//}
//
//enum Route {
//    case Login, Feed, Rewards
//}

let loginViewControllerIdentifier = "LoginViewController"
let feedViewControllerIdentifier = "FeedViewController"

let storyboard = UIStoryboard(name: "Main", bundle: nil)

let loginRoute: RouteElementIdentifier = "Login"
let feedRoute: RouteElementIdentifier = "Feed"

class RootRoutable: Routable {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setToLoginViewController() -> Routable {
        self.window.rootViewController = storyboard.instantiateViewControllerWithIdentifier(loginViewControllerIdentifier)
        
        return LoginViewRoutable(self.window.rootViewController!)
    }
    
    func setToFeedViewController() -> Routable {
        self.window.rootViewController = storyboard.instantiateViewControllerWithIdentifier(feedViewControllerIdentifier)
        return FeedViewRoutable(self.window.rootViewController!)
    }
    
    func changeRouteSegment(from: RouteElementIdentifier, to: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) -> Routable {
        
        if to == loginRoute {
            completionHandler()
            return self.setToLoginViewController()
        } else if to == feedRoute {
            completionHandler()
            return self.setToFeedViewController()
        } else {
            fatalError("Route not supported!")
        }
    }
    
    func pushRouteSegment(routeElementIdentifier: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) -> Routable {
        
        if routeElementIdentifier == loginRoute {
            completionHandler()
            return self.setToLoginViewController()
        } else if routeElementIdentifier == feedRoute {
            completionHandler()
            return self.setToFeedViewController()
        } else {
            fatalError("Route not supported!")
        }
    }
    
    func popRouteSegment(routeElementIdentifier: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) {
        // TODO: this should technically never be called -> bug in router
        completionHandler()
    }
    
}

class LoginViewRoutable: Routable {
    
    let viewController: UIViewController
    
    init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func pushRouteSegment(routeElementIdentifier: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) -> Routable {
        fatalError("Router could not proceed.")
    }
    
    func popRouteSegment(routeElementIdentifier: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) {
        completionHandler()
    }
    
}

class FeedViewRoutable: Routable {
    
    let viewController: UIViewController
    
    init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func pushRouteSegment(routeElementIdentifier: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) -> Routable {
        fatalError("Router could not proceed.")
    }
    
    func popRouteSegment(routeElementIdentifier: RouteElementIdentifier, completionHandler: RoutingCompletionHandler) {
            // no-op, since this is called when VC is already popped.
            completionHandler()
    }
}
