//
//  ContentView.swift
//  VK-SwiftUI
//
//  Created by PiZero on 05.11.2022.
//

import SwiftUI
import Combine

struct LoginContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    @State private var shouldShowLogo: Bool = true
    // Исчезновение клавиатуры
    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false } )
        .removeDuplicates()
    
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            // Оборачиваем Stack в ScrollView что бы он скролился
            VStack {
                if shouldShowLogo {
                    
                    Image("vk")
                        .resizable()
                        .frame(width: 98, height: 98, alignment: .center)
                    Text("ВКонтакте")
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 34)
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
        .onReceive(keyboardIsOnPublisher) { isKeyboardOn in withAnimation(Animation.easeInOut(duration: 0.5)) {
            self.shouldShowLogo = !isKeyboardOn
        }
            
        } .onTapGesture { UIApplication.shared.endEditing()
        }
    }
}


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct LoginContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginContentView()
    }
}
