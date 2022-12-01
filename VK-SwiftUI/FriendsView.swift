//
//  FriendsView.swift
//  VK-SwiftUI
//
//  Created by PiZero on 01.12.2022.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
        FriendCell()
    }
}

struct FriendCell: View {
    var body: some View {
        HStack {
            Image("Scorp_1")
                .resizable()
                .frame(width: 80, height: 80)
                .background(Circle().fill(Color.white).shadow(radius: 5))
            Text("Имя друга")
                .padding(10)
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
