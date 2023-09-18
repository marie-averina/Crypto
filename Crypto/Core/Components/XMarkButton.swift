//
//  XMarkButton.swift
//  Crypto
//
//  Created by Мария Аверина on 16.09.2023.
//

import SwiftUI

struct XMarkButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}


