//
//  StarterView.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import SwiftUI

struct StarterVIew: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if user.user.isRegistered {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterVIew_Previews: PreviewProvider {
    static var previews: some View {
        StarterVIew()
            .environmentObject(UserManager())
    }
}
