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
            HomeView().tabItem {
                
               Image("tabicon-home")
            }.tag(1)
            SettingView().tabItem { Image("tabicon-cv")
            }.tag(2)
            SettingView().tabItem { Image("tabicon-exp")
            }.tag(3)
            SettingView().tabItem { Image("tabicon-settings")
            }.tag(4)
        })
        .accentColor(Color.primary)
  
    }
 
}

#Preview {
    ContentView().previewLayout(.sizeThatFits)
        .environment(\.colorScheme, .light)
         
}
