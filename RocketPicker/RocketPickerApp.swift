//
//  RocketPickerApp.swift
//  RocketPicker
//
//  Created by Piotr Woźniak on 29/07/2023.
//

import SwiftUI

@main
struct RocketPickerApp: App {
    @StateObject var launchViewModel = LaunchListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(launchViewModel)
        }
    }
}
