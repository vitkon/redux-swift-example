//
//  FeedViewController.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 09/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftRouter

class FeedViewController: UIViewController, StoreSubscriber  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func newState(state: AppState) {
        print(state)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        store.subscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
