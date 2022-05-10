//
//  ContentView.swift
//  Project R
//
//  Created by Drew Foster on 4/14/22.
//

import SwiftUI


let lightGrayColor = Color(red: 245/255, green: 245/255, blue: 245/255)

struct LoginPageView: View {
    
    @StateObject private var loginMV = LoginPageModelView()
    
    
    var body: some View {
        NavigationView {
            VStack {
                title()
                loginImage()
                LoginIDField(userID: $loginMV.username)
                PasswordField(password: $loginMV.password)
                Button(action: {
                    loginMV.login()
                }, label: {
                    LoginButton(title: "Login").overlay(NavigationLink(
                                            destination: HomePageView()            .navigationBarBackButtonHidden(true)
,
                                            isActive: $loginMV.authenticated) {}
                                            .hidden())
                })
                Spacer()
            }.padding()
            .navigationBarHidden(true)
        }.onTapGesture {
            self.endTextEditing()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginPageView()
        }
        
    }
}

