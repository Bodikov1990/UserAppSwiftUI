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
            HStack{
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
                .frame(width: 250, height: 50)
                .textFieldStyle(.roundedBorder)
                Spacer()
                Text("\(name.count)")
                    .foregroundColor(name.count < minCharachter ? .red : .green)
            }
            .padding(.horizontal)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .disabled(name.count < minCharachter)
            }
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !name.isEmpty && minCharachter <= name.count {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
 

}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
