//
//  CategoryItam.swift
//  olx_clone_ios
//
//  Created by Muminov Sharifjon on 25/07/25.
//

import SwiftUI

struct CategoryItam: View {
    var body: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 5)
                .fill(Color(hex: "FDF6DE"))
                .frame(width: .infinity, height: 79)
                .overlay {
                    HStack {
                      Circle()
                            .frame(width: 60,height: 60)
                            .foregroundStyle(Color(hex: "FFD700"))
                            .overlay {
                                Image("image")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                            }.padding(.leading)
                        Spacer().frame(width: 18)

                        VStack(alignment: .leading){
                            Text("Детский мир")
                                .font(.system(size: 14))
                                .fontWeight(Font.Weight.regular)
                                .foregroundStyle(Color.black)
                            Text("44123 результатов")
                                .font(.system(size: 11))
                                .fontWeight(Font.Weight.regular)
                                .foregroundStyle(Color.black)
                            

                        }
                            
                        Spacer()
                        Image("arrow_right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 26, height: 26)
                            .padding(.trailing)
                    }
                }

        }.padding(.horizontal)
    }
}

#Preview {
    CategoryItam()
}
