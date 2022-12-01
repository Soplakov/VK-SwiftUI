//
//  GroupsView.swift
//  VK-SwiftUI
//
//  Created by PiZero on 01.12.2022.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
        GroupCell()
    }
}

struct GroupCell: View {
    var body: some View {
        HStack {
            Image("wwf_1")
                .resizable()
                .frame(width: 80, height: 80)
                .background(Circle().fill(Color.white).shadow(radius: 5))
            Text("Название группы")
                .padding(10)
        }
    }
}

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
