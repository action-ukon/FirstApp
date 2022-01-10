//
//  FirstAppApp.swift
//  FirstApp
//
//  Created by 坪田和樹 on 2022/01/07.
//

import SwiftUI

@main
struct FirstAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
