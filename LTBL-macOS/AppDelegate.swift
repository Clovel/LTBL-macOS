//
//  AppDelegate.swift
//  LTBL-macOS
//
//  Created by Clovis Durand on 08/02/2020.
//  Copyright © 2020 Clovis Durand. All rights reserved.
//

import LTBL

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!

    var device: LTBLDevice!


    func applicationDidFinishLaunching(_ aNotification: Notification) {

        /* Setup a LTBL device */
        device = LTBLDevice("192.168.1.49")

        /* Get home page to update the LTBL state the first time */
        device.getHomePage()

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView().environmentObject(device)

        // Create the window and set the content view. 
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

