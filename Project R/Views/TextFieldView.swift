//
//  TextFieldView.swift
//  Project R
//
//  Created by Drew Foster on 4/14/22.
//

import SwiftUI

struct TextFieldView: View, Identifiable {
    
    @ObservedObject private var loginMV = LoginPageModelView()
    
    // @State allows us to modify the value of loginMV. State is persistent storage
    var id: ObjectIdentifier
    var placeholder : String
    
    var body: some View {
        ZStack {
            Color(.white)
            TextField(placeholder, text: $loginMV.text).padding()
        }
    }
    
}
