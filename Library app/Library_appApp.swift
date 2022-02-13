//
//  Library_appApp.swift
//  Library app
//
//  Created by Rune Pollet on 08/02/2022.
//

import SwiftUI

@main
struct Library_appApp: App {
    var body: some Scene {
        WindowGroup {
            BeginView()
                .environmentObject(BookModel())
        }
    }
}
