//
//  LoginPageModelView.swift
//  Project R
//
//  Created by Drew Foster on 4/14/22.
//

import Foundation
import SwiftUI


final class LoginPageModelView : ObservableObject {
    
    @Published var username : String = ""
    @Published var password : String = ""
    @Published var authenticated : Bool = false
    
    
    func login() {
        print(username, password)
        if username == "Test" && password == "123" {
            authenticated = true
            print("SUCCESSFUL LOGIN")
            print(authenticated)
        } else {
            print("ERROR")
        }
    }
}
