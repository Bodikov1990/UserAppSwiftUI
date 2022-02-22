//
//  UserManager.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
