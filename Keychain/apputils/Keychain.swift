//
//  Keychain.swift
//  Keychain
//
//  Created by Зехниддин on 04/02/21.
//

import Foundation
import SwiftKeychainWrapper

class Keychain: ObservableObject {
    @Published var password: String {
        didSet {
            KeychainWrapper.standard.set(password, forKey: "password")
        }
    }
    
    init() {
        self.password = KeychainWrapper.standard.string(forKey: "password") ?? "no password"
    }
    
    func removePassword() {
        KeychainWrapper.standard.remove(forKey: "password")
    }
}
