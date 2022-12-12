//
//  ImageBuilder.swift
//  VK-SwiftUI
//
//  Created by PiZero on 12.12.2022.
//

import SwiftUI

struct ImageBuilder: View {
    var content: Image
    
    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }
    var body: some View {
        content
            .resizable()
            .frame(width: 50, height: 50)
            .modifier(ImageModifier(imageCornerRadius: 40, shadowColor: .black, shadowRadius: 5, x: 3, y: 3))
    }
}
