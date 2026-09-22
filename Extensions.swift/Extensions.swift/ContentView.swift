//
//  ContentView.swift
//  Extensions.swift
//
//  Created by Ryker Farabee on 9/22/26.
//

import Foundation

extension Collection {
    var isNotEmpty: Bool {
        !self.isEmpty
    }
}
let blank = ""
let isNotEmpty = blank.isNotEmpty

extension String {
    var isValidEmail: Bool {
        let emailPattern = "^\\S+@\\S+\\.\\S+$"
        return self.range(of: emailPattern, options: .regularExpression) != nil
    }
}

extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}
let url = "www.hackingwithswift.com"
let fullURL = url.withPrefix("https://")
