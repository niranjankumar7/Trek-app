//
//  TrekApp.swift
//  Trek
//
//  Created by Niranjan Kumar on 24/04/21.
//

import SwiftUI

@main
struct TrekApp: App {
    @StateObject var locations = Locations() //when we have class and want to share that time we can use stateobject
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: Locations().primary )
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                
                NavigationView{
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
        }
    }
}
