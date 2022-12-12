//
//  FriendsView.swift
//  VK-SwiftUI
//
//  Created by PiZero on 01.12.2022.
//

import SwiftUI

struct FriendsView: View {
    @State var friends: [Friend] = MySession.shared.friends
    var body: some View {
        NavigationView {
            List(friends) { friend in
                FriendCell(friend: friend)
            }.navigationBarTitle(Text("Друзья"))
            
        }
    }
}

struct FriendCell: View {
    let friend: Friend
    var body: some View {
        HStack {
            ImageBuilder {
                Image(uiImage: friend.photo50)
//            Image("Scorp_1")
//                .resizable()
//                .frame(width: 80, height: 80)
//                .background(Circle().fill(Color.white).shadow(radius: 5))
            }
            VStack(alignment: .leading) {
                Text("\(friend.firstName) \(friend.lastName)")
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("\(friend.id)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }.padding(.leading, 30)
                
//            Text("Имя друга")
//                .padding(10)
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
