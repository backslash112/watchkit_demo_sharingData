//
//  InterfaceController.swift
//  WatchKit_demo_sharingData WatchKit Extension
//
//  Created by YangCun on 5/26/15.
//  Copyright (c) 2015 backslash112. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myInterfaceLabel: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func loadButtonClicked() {
        let userDefaults = NSUserDefaults(suiteName: "group.yangcun.watchkitdemosharingdata")
        userDefaults!.synchronize()
        let data = userDefaults!.stringForKey("savedUserInput")
        println("\(data)")
        self.myInterfaceLabel.setText(data)
    }

}
