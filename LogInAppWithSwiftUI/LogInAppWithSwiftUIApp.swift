//
//  LogInAppWithSwiftUIApp.swift
//  LogInAppWithSwiftUI
//
//  Created by Алишер Маликов on 18.01.2023.
//

import SwiftUI

@main
struct LogInAppWithSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
