//
//  RegisterView.swift
//  Project R
//
//  Created by Drew Foster on 4/19/22.
//

import Foundation
import SwiftUI

struct RegisterView : View {
    
    @StateObject private var registerView = RegisterModelView()
    
    var body: some View {
        
        NavigationView {
            VStack {
                Text("\(registerView.username)/49KSL3")
                NameField(name: $registerView.name)
                LoginIDField(userID: $registerView.username)
                PasswordField(password: $registerView.password)
                Spacer()
                Button(action: {
                    registerView.register()
                }, label: {
                    LoginButton(title: "Register").overlay(NavigationLink(
                                            destination: HomePageView().navigationBarBackButtonHidden(true),
                                            isActive: $registerView.authenticated) {}
                                            .hidden())
                })
                Spacer()
                .navigationTitle("Register")
            }.padding()
        }
        .onTapGesture {
            self.endTextEditing()
        }
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
