//
//  ContentView.swift
//  MyTech
//
//  Created by MOSTEFAI Tarik on 28/02/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
 
    var body: some View {
        TabView( content:
                    {
            HomeView().tabItem { Text("Home")
            }.tag(1)
            Text("Tab Content 2").tabItem { Text("Tab Label 2")
            }.tag(2)
            Text("Tab Content 3").tabItem { Text("Tab Label 3")
            }.tag(3)
            Text("Tab Content 4").tabItem { Text("Tab Label 4")
            }.tag(4)
        })
        .accentColor(Color.primary)
       
        
    }
 
}

#Preview {
    ContentView()
         
}
