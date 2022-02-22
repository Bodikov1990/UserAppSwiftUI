//
//  UserAppSwiftUIApp.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
           StarterVIew()
                .environmentObject(userManager)
        }
    }
}
