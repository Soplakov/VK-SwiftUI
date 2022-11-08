//
//  ContentView.swift
//  VK-SwiftUI
//
//  Created by PiZero on 05.11.2022.
//

import SwiftUI

struct LoginContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    
    
    
    var body: some View {
        
        VStack {
            
        Text("ВКонтакте")
                .font(.largeTitle)
                .bold()
                .padding(.top, 32)
        }
        
        VStack {
            // Поле ввода логина пользователя
            HStack {
                Text("Login:")
                Spacer()
                TextField("", text: $login)
                    .frame(maxWidth: 150)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            // Поле ввода пароля пользователя
            HStack {
                Text("Password:")
                Spacer()
                SecureField("", text: $password)
                    .frame(maxWidth: 150)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginContentView()
    }
}
