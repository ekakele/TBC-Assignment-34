//
//  Assignment_34App.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 02.01.24.
//

import SwiftUI

@main
struct Assignment_34App: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.white]
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
