//
//  LoginView.swift
//  MyTech
//
//  Created by MOSTEFAI Tarik on 29/02/2024.
//

import SwiftUI
import Combine
struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var showModal: Bool = false
    @State var slideInAnimation: Bool = false
    var body: some View {
        
        VStack(alignment: .center) {
            
            Image("profil")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .background(Circle())
                .frame(width: 100, height: 100)
                .background(Circle().frame(width: 110, height: 110))
                .background(Circle()
                    .fill(Color.white)
                    .frame(width: 120, height: 120)
                
                )
                .zIndex(1.0)
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideInAnimation ? 55 : -55)
              
            VStack(alignment: .center) {
                
                TextField("username or email", text: $username)
                    .padding(.vertical, 15)
                    .background(Color.black)
                    .font(.system(size: 12, design: .rounded))
                   
                    .fontWeight(.heavy)
                
                
                SecureField("Password", text: $password)
                    .padding(.vertical, 15)
                    .background(.black)
                HStack(alignment: .center, content: {
                    
                    Spacer()
                    Button {
                        //                self.shee OtpFormFieldView()
                        self.showModal = true
                    } label: {
                        Spacer()
                        
                        Text("Log In")
                            .font(.system(.title3, design: .rounded))
                            .font(.system(.footnote,design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(15)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    
                    .padding(.horizontal, 50)
                    .onTapGesture {
                        self.showModal = true
                    }
                })
                
                //            OtpFormFieldView()
                
            }// VSTACK
            .padding(25)
            .frame(width: 300, height: 280)
            .background(Color.white)
            .cornerRadius(25)
            .padding(.vertical, 15)
            .zIndex(0)
            
        }
        .padding(.horizontal, 15)
        .background(Image("background")
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
        .sheet(isPresented: self.$showModal, content: {
            OtpFormFieldView()
        })
        .onAppear(perform: {
            slideInAnimation = true
        })
    }
}

#Preview {
    LoginView().previewLayout(.sizeThatFits)
}
