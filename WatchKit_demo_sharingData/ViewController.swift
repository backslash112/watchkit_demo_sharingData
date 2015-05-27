//
//  ViewController.swift
//  WatchKit_demo_sharingData
//
//  Created by YangCun on 5/26/15.
//  Copyright (c) 2015 backslash112. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myShowLoadedDataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonClicked(sender: AnyObject) {
        var userInputData = self.myTextField.text
        self.myLabel.text = userInputData
        let userDefaults = NSUserDefaults(suiteName: "group.yangcun.watchkitdemosharingdata")
        userDefaults!.setObject(userInputData, forKey: "savedUserInput")
        userDefaults!.synchronize()
        self.view.endEditing(true)
    }

    @IBAction func loadButtonClicked(sender: AnyObject) {
        let userDefaults = NSUserDefaults(suiteName: "group.yangcun.watchkitdemosharingdata")
        userDefaults!.synchronize()
        let data = userDefaults!.stringForKey("savedUserInput")
        self.myShowLoadedDataLabel.text = data
    }
}

