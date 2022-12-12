//
//  ImageModifier.swift
//  VK-SwiftUI
//
//  Created by PiZero on 12.12.2022.
//

import SwiftUI

struct ImageModifier: ViewModifier {
    let imageCornerRadius: CGFloat
    let shadowColor: Color
    let shadowRadius: CGFloat
    let x: CGFloat
    let y: CGFloat
    
    func body(content: Content) -> some View {
        content
            .cornerRadius(imageCornerRadius)
            .background(Circle()
                .fill(Color.white)
                .shadow(color: shadowColor, radius: shadowRadius, x: x, y: y))
    }
}
