//
//  RegisterModelView.swift
//  Project R
//
//  Created by Drew Foster on 4/19/22.
//

import Foundation
import UIKit

class RegisterModelView : ObservableObject {
    
    @Published var name : String = ""
    @Published var username : String  = ""
    @Published var password : String = ""
    @Published var authenticated : Bool = false
    
    
    func register() {
        print(authenticated)
        if username.count > 0 && password.count > 0 {
            authenticated = true
        }
    }
    
}
