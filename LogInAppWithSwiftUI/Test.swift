//
//  Test.swift
//  LogInAppWithSwiftUI
//
//  Created by Алишер Маликов on 18.01.2023.
//

import SwiftUI

struct Test: View {
    @State private var tapCount = 0

        var body: some View {
            Button("Tap count: \(tapCount)") {
                tapCount += 1
                UserDefaults.standard.set(self.tapCount, forKey: "Tap")
            }
        }
    

}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
