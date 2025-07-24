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
                VStack(alignment: .leading){
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
                    
                    MainCategoryView()
                    Spacer().frame(height: 21)
                    Text("Рекомендованое вам")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .padding(.horizontal, 15)
                
                    Spacer().frame(height: 16)
                    MainGridView()

                   
                        
                }
            }
        })
        .background(Color(hex: "F3F3F3"))
        
        
    }
}

#Preview {
    MainPageView()
}
