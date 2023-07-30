//
//  ContentView.swift
//  RocketPicker
//
//  Created by Piotr Woźniak on 29/07/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var launchViewModel: LaunchListViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchListViewModel())
    }
}
