//
//  ContentView.swift
//  LTBL-macOS
//
//  Created by Clovis Durand on 08/02/2020.
//  Copyright © 2020 Clovis Durand. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var device: LTBLDevice

    var body: some View {
        return VStack {
            Text("ESP8266 Web Server - LTBL")

            Text(device.state.rawValue)

            Spacer()

            Button(action: {
                self.device.turnOn()
            }) {
                // How the button looks like
                Text("Turn ON")
            }

            Button(action: {
                self.device.turnOff()
            }) {
                // How the button looks like
                Text("Turn OFF")
            }

            Button(action: {
                self.device.toggle()
            }) {
                // How the button looks like
                Text("Toggle")
            }

            Button(action: {
                self.device.getHomePage()
            }) {
                // How the button looks like
                Text("Home Page")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
