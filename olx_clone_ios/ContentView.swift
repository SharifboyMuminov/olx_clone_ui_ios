//
//  ContentView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 24/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack {
                HStack {
                    Button {
                        print("hi")
                    } label: {
                        Text("Отмена")
                            .font(.system(size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "747474"))
                    }
                    Spacer()
                }

                Text("Категории")
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
            }.padding(.horizontal)
                .padding(.bottom)
            ScrollView{
                VStack (spacing: 10){
                    ForEach(0..<20, id: \.self) { index in
                                MainItem()
                            }
                }
            }
            

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

            
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
