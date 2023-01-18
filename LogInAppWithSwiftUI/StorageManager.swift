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

    @AppStorage("register") var isRegistered = false
    @AppStorage("name") var name = ""

    
    private init () {}

}
