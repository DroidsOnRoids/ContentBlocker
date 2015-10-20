//
//  ViewController.swift
//  Content Blocker
//
//  Created by Piotr Sochalewski on 20.10.2015.
//  Copyright © 2015 Droids on Roids. All rights reserved.
//

// Frameworks
import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bundleId = "com.droidsonroids.Content-Blocker.Safari-Extension"
        SFContentBlockerManager.reloadContentBlockerWithIdentifier(bundleId, completionHandler: nil)
    }

}