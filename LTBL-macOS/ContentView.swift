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
                Text("Turn ON")
            }

            Button(action: {
                self.device.turnOff()
            }) {
                Text("Turn OFF")
            }

            Button(action: {
                self.device.toggle()
            }) {
                Text("Toggle")
            }

            Button(action: {
                self.device.getHomePage()
            }) {
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
