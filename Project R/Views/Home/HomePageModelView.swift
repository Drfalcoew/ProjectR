//
//  HomePageModelView.swift
//  Project R
//
//  Created by Drew Foster on 4/18/22.
//

import Foundation
import UIKit
import CoreNFC

class HomePageModelView : NSObject, ObservableObject {
    
    
    @Published var data : String = ""
    @Published var alert : Bool = false
    var alertMsg : String = ""
    var alertTitle : String = ""
    
    let nfcManager = NFCManager()

    
    func read() {
        nfcManager.read { manager in
            manager.setMessage("👀 Place iPhone near the tag to read")
        } didDetect: { manager, result in
            switch result {
            case .failure:
                manager.setMessage("👎 Failed to read tag")
            case .success:
                manager.setMessage("🙌 Tag read successfully")
            }
        }
    }
    
    func write(data: String) {
        print("HI")
        do {
            print("IN DO")
            try nfcManager.write(message: data) { manager in
                // Session did become active
                manager.setMessage("👀 Place iPhone near the tag to be written on")
            } didDetect: { manager, result in
                switch result {
                    case .failure:
                        self.alertTitle = "Error"
                        self.alertMsg = "Failure to read/write"
                        self.alert.toggle()
                    case .success:
                        self.alertTitle = "Success"
                        self.alertMsg = "Written successfully" 
                        self.alert.toggle()
                }
            }
        } catch {
            alertTitle = "Error"
            alertMsg = "Could not create payload"
            alert.toggle()
        }
    }
}
