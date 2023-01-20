//
//  StorageManager.swift
//  LogInAppWithSwiftUI
//
//  Created by Алишер Маликов on 18.01.2023.
//

import Foundation
import SwiftUI


class StorageManager {
    static let shared = StorageManager()

    @AppStorage("user") var userData: Data?

    
    private init () {}
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        guard let userData else { return User() }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        guard let user = user else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
    }

}
