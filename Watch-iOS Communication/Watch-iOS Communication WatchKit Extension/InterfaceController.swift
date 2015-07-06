//
//  InterfaceController.swift
//  Watch-iOS Communication WatchKit Extension
//
//  Created by Ivens Denner on 06/07/15.
//  Copyright (c) 2015 Ivens Denner. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

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
    
    func selectFriendsName(name: String) {
        let infoDictionary = ["name": name]
        
        WKInterfaceController.openParentApplication(infoDictionary, reply: { (replyDictionary, error) -> Void in
            println("Reply!")
        })
    }
    
    
    // MARK: - IBActions
    @IBAction func ivensAction() {
        selectFriendsName("Ivens")
    }
    @IBAction func dennerAction() {
        selectFriendsName("Denner")
    }
    @IBAction func felipeAction() {
        selectFriendsName("Felipe")
    }
    @IBAction func rafaelAction() {
        selectFriendsName("Rafael")
    }
    // MARK: -

}
