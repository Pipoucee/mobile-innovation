//
//  HomeView.swift
//  MyTech
//
//  Created by MOSTEFAI Tarik on 28/02/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var pulsateAnimation: Bool = false
    var body: some View {
        
            VStack (alignment: .center, spacing: 20) {
                    Spacer()
                    //: Photo vs Video de presentation
                  
                            Image("profil")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .opacity(self.pulsateAnimation ? 1 : 0.9)
                                .frame(width: 200, height: 200)
                                .clipShape(Circle())
                                .shadow(color: .white, radius:25)
                                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                                .animation(.spring(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
                                
                                 
                        
                       
                    
                        
                Spacer()
            //: Header
                Text("Tarik MOSTEFAI")
                        .fontWeight(.bold)
                        .font(.system(size: 24, design: .serif))
                
               
                //: Header
                    Text("Lead tech mobile")
                            .fontWeight(.bold)
                            .font(.system(size: 30, design: .serif))
                
            //: Description
                
                Text("""
Une opportunité de travailler et de se perfectionner, ainsi que d'être impliqué dans une organisation qui croit au challenge et redonne à la communauté. Je renforce actuellement ma solide expérience en développement Mobile & Web.

 « Soyez le changement que vous voulez voir dans le monde » - Gandhi
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineSpacing(6)
                    .frame(maxWidth: 640, minHeight: 120)
                Spacer()
            }// VSTACK
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                self.pulsateAnimation.toggle()
            })
             
            .background(
                Image("background")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
            )
            .edgesIgnoringSafeArea(.all)
    
        }
      
    
    
}

#Preview {
    HomeView().previewLayout(.sizeThatFits)
        .environment(\.colorScheme, .light)
}
