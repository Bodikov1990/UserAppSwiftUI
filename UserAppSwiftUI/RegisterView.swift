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
    private var minCharachter = 4
    
    var body: some View {
        VStack {
            Form {
                HStack{
                    UserTFView(name: $user.user.name, validating: user.validating)
                }
                
                Button(action: registerUser) {
                    
                    HStack {
                        
                        Image(systemName: "checkmark.circle")
                        Text("Ok")
                    }
                    .disabled(!user.validating)
                }
            }
            
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !user.user.name.isEmpty{
            user.user.isRegistered.toggle()
            DataManager.shared.save(user: user.user)
        }
    }
}


struct UserTFView: View {
    
    @Binding var name: String
    var validating = false
    
    var body: some View {
        ZStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            HStack {
                Spacer()
                Text("\(name.count)")
                    .font(.callout)
                    .foregroundColor(validating ? .green : .red)
                    .padding([.top, .trailing])
            }
            .padding(.bottom)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
