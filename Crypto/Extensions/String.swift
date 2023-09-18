//
//  String.swift
//  Crypto
//
//  Created by Мария Аверина on 17.09.2023.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
