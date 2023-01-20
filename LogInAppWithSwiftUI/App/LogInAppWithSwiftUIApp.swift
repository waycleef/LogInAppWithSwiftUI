//
//  LogInAppWithSwiftUIApp.swift
//  LogInAppWithSwiftUI
//
//  Created by Алишер Маликов on 18.01.2023.
//

import SwiftUI

@main
struct LogInAppWithSwiftUIApp: App {
    
    private let user = StorageManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
