//
//  MainGridView.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 24/07/25.
//

import SwiftUI

struct MainGridView: View {
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
            LazyVGrid(columns: columns, spacing: 20) {
                           ForEach(0..<10) { index in
                               RoundedRectangle(cornerRadius: 10)
                                   .frame(height: 207)
                               
                                   .foregroundStyle(Color.white)
                                   .overlay {
                                       VStack(alignment: .leading){
                                           Image("work_person")
                                               .resizable()
                                               .scaledToFit()
                                           Spacer()
                                           HStack(alignment: .top){
                                               Text("Сантехнические работы")
                                                   .font(.system(size: 12))
                                                   .fontWeight(.medium)
                                               Spacer()
                                               Button {
                                                   
                                               } label: {
                                                   Image(systemName: "heart")
                                                       .foregroundStyle(Color.black)
                                               }

                                           }.padding(.horizontal,11)
                                           Spacer().frame(height: 5)
                                           Text("Ташкент. Сегодня 11:43").font(.system(size: 11))
                                               .fontWeight(.light)
                                               .foregroundStyle(Color(hex: "#595959"))
                                               .padding(.horizontal,11)
                                           Spacer().frame(height: 5)
                                           Text("от 100 000 сум").font(.system(size: 14))
                                               .fontWeight(.bold)
                                               .padding(.horizontal,11)
                                           Spacer().frame(height: 13)
                                           
                                       }
                                   
                           }
                       }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    MainGridView()
}
