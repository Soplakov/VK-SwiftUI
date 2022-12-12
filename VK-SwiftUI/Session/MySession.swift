//
//  MySession.swift
//  VK-SwiftUI
//
//  Created by PiZero on 12.12.2022.
//

import Foundation
import UIKit

final class MySession {
    static var shared = MySession()
    
    private init() {}
    
    var friends = [
        Friend(firstName: "Ханзо", lastName: "Хасаши", id: 22, photo50: UIImage(named: "Scorp_1")!)
    ]
    
}
