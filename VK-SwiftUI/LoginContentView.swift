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
    
    @State private var shouldShowLogo: Bool = true
    
    
    
    
    var body: some View {
        
        VStack {
            Image("vk")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
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
        } .frame(maxWidth: 250)
            .padding(.top, 50)
        
        Button(action: { print("Hello") }) {
            Text("Войти")
        }
        .padding(.top, 50)
        .padding(.bottom, 20)
        // Кнопка Войти будет недоступна если одно из полей будет пустое
        .disabled(login.isEmpty || password.isEmpty)
    }
}
    


struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginContentView()
    }
}
