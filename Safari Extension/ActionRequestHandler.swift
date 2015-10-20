//
//  ActionRequestHandler.swift
//  Safari Extension
//
//  Created by Piotr Sochalewski on 20.10.2015.
//  Copyright © 2015 Droids on Roids. All rights reserved.
//

// Frameworks
import UIKit
import MobileCoreServices

class ActionRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequestWithExtensionContext(context: NSExtensionContext) {
        let attachment = NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList", withExtension: "json"))!
    
        let item = NSExtensionItem()
        item.attachments = [attachment]
    
        context.completeRequestReturningItems([item], completionHandler: nil);
    }
    
}