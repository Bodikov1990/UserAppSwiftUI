//
//  UserManager.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var user = User()
   
    var validating: Bool {
        user.name.count >= 4
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
