//
//  ContentView.swift
//  RocketPicker
//
//  Created by Piotr Woźniak on 29/07/2023.
//

import SwiftUI
import RocketPickerAPI

struct ContentView: View {
    @EnvironmentObject var launchViewModel: LaunchListViewModel
    
    var body: some View {
        ScrollView {
            ForEach(launchViewModel.launches, id: \.self) { launch in
                singleViewCell(launch: launch)
            }
        }
    }
    
    @MainActor
    func singleViewCell(launch: LaunchListQuery.Data.Launches.Launch) -> some View {
        VStack(alignment: .leading) {
            Text("Mission: \(launch.mission?.name ?? "")")
                .font(.title2.bold())
            Text("Rocket name: \(launch.rocket?.name ?? "") ")
                .font(.title3.bold())
            Text("Launch ID: \(launch.id)")
            Text("Site: \(launch.site ?? "")")
        }
        .frame(maxWidth: 300, alignment: .leading)
        .padding()
        .background(Color.blue.opacity(0.5))
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchListViewModel())
    }
}
