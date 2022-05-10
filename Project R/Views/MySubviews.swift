//
//  MySubviews.swift
//  Project R
//
//  Created by Drew Foster on 4/17/22.
//

import Foundation
import SwiftUI

struct loginImage: View {
    var body: some View {
        Image("bg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 120, height: 120, alignment: .center)
            .cornerRadius(100)
            .padding(.bottom, 15)
        
    }
}

struct title: View {
    var body: some View {
        Text("Project R")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.top, 50)
            .padding(.bottom, 20)
    }
}

struct LoginButton: View {
    var title : String
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .frame(width: 160, height: 50, alignment: .center)
            .background(Color(.black))
            .cornerRadius(35.0)
    }
}

struct NameField: View {
    @Binding var name : String
    var body: some View {
        TextField("First Name", text: $name)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
    }
}

struct LoginIDField: View {
    @Binding var userID : String
    var body: some View {
        TextField("Login ID", text: $userID)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
    }
}

struct PasswordField: View {
    @Binding var password : String
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGrayColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct buttonSubclass: View {
    var name : String
    var receiver : HomePageModelView
    var body: some View {
        Button(action: {
            receiver.write(data: receiver.data)
        }, label: {
            Text("\(name)")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .frame(width: 160, height: 50, alignment: .center)
                .background(Color(.black))
                .cornerRadius(35.0)
        })
    }
}

extension View {
  func endTextEditing() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                                    to: nil, from: nil, for: nil)
  }
}

