//
//  ContentView.swift
//  LTBL-macOS
//
//  Created by Clovis Durand on 08/02/2020.
//  Copyright © 2020 Clovis Durand. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let device: LTBLDevice = LTBLDevice()

        device.IPAddr = "192.168.1.49"

        device.getHomePage()

        return VStack {
            Text("ESP8266 Web Server - LTBL")
            Spacer()

            Button(action: {
                device.turnOn()
            }) {
                // How the button looks like
                Text("Turn ON")
            }

            Button(action: {
                device.turnOff()
            }) {
                // How the button looks like
                Text("Turn OFF")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
