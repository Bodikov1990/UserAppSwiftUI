//
//  UserAppSwiftUIApp.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    private var userManager = DataManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
           StarterVIew()
                .environmentObject(UserManager(user: userManager))
        }
    }
}
