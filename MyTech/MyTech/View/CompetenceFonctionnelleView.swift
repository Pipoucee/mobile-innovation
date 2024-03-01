//
//  CompetenceFonctionnelleView.swift
//  MyTech
//
//  Created by MOSTEFAI Tarik on 28/02/2024.
//

import SwiftUI

struct CompetenceFonctionnelleView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
          // 1st Column
          VStack(alignment: .leading, spacing: 4) {
            HStack() {
              Image("icon-toasts")
                .resizable()
                .modifier(IconModifier())
              Spacer()
              Text("Analyse des besoins")
            }
            Divider()
            HStack() {
              Image("icon-tacos")
                .resizable()
                .modifier(IconModifier())
              Spacer()
              Text("Préconisation techique")
            }
            Divider()
            HStack() {
              Image("icon-salads")
                .resizable()
                .modifier(IconModifier())
              Spacer()
              Text("Choix technique")
            }
            Divider()
            HStack() {
              Image("icon-halfavo")
                .resizable()
                .modifier(IconModifier())
              Spacer()
              Text("Encadrement")
            }
          }
          
          // 2nd Column
          VStack(alignment: .center, spacing: 16) {
            HStack {
              Divider()
            }
            
            Image(systemName: "heart.circle")
              .font(Font.title.weight(.ultraLight))
              .imageScale(.large)
            
            HStack {
              Divider()
            }
          }
          
          // 3rd Column
          VStack(alignment: .trailing, spacing: 4) {
            HStack() {
              Text("Chiffrage")
              Spacer()
              Image("icon-guacamole")
                .resizable()
                .modifier(IconModifier())
            }
            Divider()
            HStack() {
              Text("Retrospective")
              Spacer()
              Image("icon-sandwiches")
                .resizable()
                .modifier(IconModifier())
            }
            Divider()
            HStack() {
              Text("Suivi")
              Spacer()
              Image("icon-soup")
                .resizable()
                .modifier(IconModifier())
            }
            Divider()
            HStack() {
              Text("Formation")
              Spacer()
              Image("icon-smoothies")
                .resizable()
                .modifier(IconModifier())
            }
          }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
      }
    
struct IconModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(width: 42, height: 42, alignment: .center)
  }
}
}
 

#Preview {
    CompetenceFonctionnelleView().previewLayout(.sizeThatFits)
}
