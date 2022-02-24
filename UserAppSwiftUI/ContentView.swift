//
//  ContentView.swift
//  UserAppSwiftUI
//
//  Created by Kuat Bodikov on 22.02.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Hi, \(user.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(title: timer.buttonTitle, color: .red) {
                timer.startTimer()
            }
            Spacer()
            ButtonView(title: "Log Out", color: .blue) {
                DataManager.shared.clear(userManager: user)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


