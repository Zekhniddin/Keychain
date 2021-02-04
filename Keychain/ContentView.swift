//
//  ContentView.swift
//  Keychain
//
//  Created by Зехниддин on 04/02/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var keychain = Keychain()
    
    init() {
        print(keychain.password)
        keychain.password = "123456"
        print(keychain.password)
    }
    var body: some View {
        Text("Password: ") + Text(keychain.password).fontWeight(.medium)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
