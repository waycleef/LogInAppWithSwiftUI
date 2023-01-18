//
//  UserManager.swift
//  LogInAppWithSwiftUI
//
//  Created by Алишер Маликов on 18.01.2023.
//

import Foundation

class UserManager: ObservableObject {
    @Published var isRegistered = StorageManager.shared.fetchDataBool()
    var name = StorageManager.shared.fetchDataName()
}
