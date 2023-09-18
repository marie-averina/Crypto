//
//  HapticManager.swift
//  Crypto
//
//  Created by Мария Аверина on 17.09.2023.
//

import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
