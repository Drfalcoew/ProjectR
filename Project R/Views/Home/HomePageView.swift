//
//  HomePageView.swift
//  Project R
//
//  Created by Drew Foster on 4/18/22.
//

import Foundation
import SwiftUI


struct HomePageView: View {
    
    @StateObject private var homePage = HomePageModelView()
    
    var body: some View {
        VStack {
            TextField("Enter a URL", text: $homePage.data)
                .padding()
                .background(lightGrayColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            ForEach(1..<2) {_ in
                buttonSubclass(name: "Activate", receiver: homePage)
            }
        }.onTapGesture {
            self.endTextEditing()
        }
        .alert(isPresented: $homePage.alert) {
            Alert(title: Text(homePage.alertTitle), message: Text("\(homePage.alertMsg)"), dismissButton: .default(Text("OK")))
        }
        .navigationBarTitle("Home", displayMode: .inline)
        .padding()
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
