//
//  MainPageView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 24/07/25.
//

import SwiftUI

struct MainPageView: View {
    @State private var searchValue: String = ""

    
    var body: some View {
        Rectangle()
        .foregroundStyle(Color(hex: "F3F3F3"))
        .overlay(content: {
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)

                                TextField("Qidiring...", text: $searchValue)
                                    .foregroundColor(.black)
                                    .font(.system(size: 16))
                                    
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .padding(.horizontal,15)
                            .padding(.bottom,15)
                    
                    Rectangle()
                        .frame(width: .infinity,height: 260)
                        .foregroundStyle(Color.white)
                        .overlay {
                            
                        }
                        
                }
            }
        })
        .background(Color(hex: "F3F3F3"))
        
        
    }
}

#Preview {
    MainPageView()
}
