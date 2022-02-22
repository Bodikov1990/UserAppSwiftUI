//
//  RegisterView.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
}

extension RegisterView {
    private func registerUser() {
        validating()
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
    private func validating() {
        if name.count < 4 {
            print("Ooops")
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
