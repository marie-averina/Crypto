//
//  UIApplication.swift
//  Crypto
//
//  Created by Мария Аверина on 16.09.2023.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
