//
//  ContentView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 24/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            MainPageView()
        }
    }
}



#Preview {
    ContentView()
}


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#") // `#` belgisi bor bo‘lsa o‘tkazib yubor
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255

        self.init(red: r, green: g, blue: b)
    }
}
