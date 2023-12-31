//
//  Assignment_31App.swift
//  Assignment-31
//
//  Created by Eka Kelenjeridze on 22.12.23.
//

import SwiftUI

@main
struct Assignment_31App: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.white]
    }
    
    var body: some Scene {
        WindowGroup {
            ArtGalleryView()
        }
    }
}
